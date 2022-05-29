import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/data/questions_lang_part.dart';
import 'package:ukrmowazno/data/questions_punct.dart';
import 'package:ukrmowazno/data/questions_simp.dart';
import 'package:ukrmowazno/data/questions_synt.dart';
import 'package:ukrmowazno/model/category.dart';

final testCategory = <Category>[
  Category(
    questions: questionsLangPart,
    categoryName: 'Частини мови',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.book,
  ),
  Category(
    questions: questionsSimp,
    categoryName: 'Спрощення',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.scissors,
  ),
  Category(
    questions: questionsSynt,
    categoryName: 'Синтаксис',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.pen,
  ),
  Category(
    questions: questionsPunct,
    categoryName: 'Пунктуація',
    backgroundColor: Colors.lightBlue,
    icon: FontAwesomeIcons.exclamation,
  ),
];
