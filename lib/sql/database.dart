import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:ukrmowazno/model/categories_enum.dart';
import 'package:ukrmowazno/model/option.dart';
import 'package:ukrmowazno/model/question.dart';

// Singleton based database service
class DatabaseService {
  static const _dbAssetsPath = 'assets/application.db';
  static final DatabaseService _databaseService = DatabaseService._internal();
  Database? _db;

  factory DatabaseService() {
    return _databaseService;
  }

  // During first call of service, initialization of db is processed
  DatabaseService._internal() {
    _initDatabase();
  }

  // Each platform has its own place for database, so during initialization we
  // check if it already has been created. If it hasn't
  // (e.g. first run or clear cache), we copy external database from assets
  Future<void> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'application.db');

    final isExists = await databaseExists(path);

    if (!isExists) {
      final data = await rootBundle.load(_dbAssetsPath);
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );

      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      _db = await openDatabase(path);
    }
  }

  Future<List<Question>> _getQuestionsWithOptions({
    required List<int> ids,
    required List<Map<String, Object?>> questionsQueryResult,
  }) async {
    final idsArgument = ids.map((e) => '$e');

    final options = await _db?.rawQuery('''
      SELECT * FROM answers WHERE	question_id IN $idsArgument
    ''');

    List<Question> questions = [];

    for (final question in questionsQueryResult) {
      List<Option> newOptions = [];

      if (!ids.contains(question['question_id'] as int)) {
        continue;
      }

      options?.forEach((opt) {
        if (opt['question_id'] == question['question_id']) {
          final optionObj = Option(
            text: opt['answer_text'].toString(),
            code: opt['answer_score'].toString(),
            isCorrect: opt['answer'] as int == 1,
          );

          newOptions.add(optionObj);
        }
      });

      questions.add(Question(
        text: question['question_text'].toString(),
        options: newOptions,
      ));
    }

    return questions;
  }

  // If amount param is larger than quantity of questions from this category,
  // we will ignore this param and work with all questions
  Future<List<Question>> getRandomQuestionsByCategory({
    required CategoriesEnum category,
    int amount = 10,
  }) async {
    final questions = await _db!.rawQuery('''
      SELECT * FROM question WHERE question_type = ?
    ''', [category.value]);

    final questionsAmount =
        amount <= questions.length ? amount : questions.length;
    final Random random = Random();

    List<int> ids = [];
    for (int i = 0; i < questions.length; i++) {
      if (ids.length == questionsAmount) {
        break;
      } else {
        if (random.nextBool()) {
          ids.add(questions[i]['question_id'] as int);
        }
      }
    }

    final resultQuestions = await _getQuestionsWithOptions(
      ids: ids,
      questionsQueryResult: questions,
    );

    return resultQuestions;
  }
}
