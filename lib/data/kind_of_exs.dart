import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/data/categories.dart';
import 'package:ukrmowazno/data/questions_lang_part.dart';
import 'package:ukrmowazno/data/questions_punct.dart';
import 'package:ukrmowazno/data/questions_simp.dart';
import 'package:ukrmowazno/data/questions_synt.dart';
import 'package:ukrmowazno/model/category.dart';
import 'package:ukrmowazno/model/kind_of_ex.dart';

final kinds = <KindOfEx>[
  KindOfEx(
    categories: testCategory,
    categoryName: 'Тести',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.book,
  ),
  // KindOfEx(
  //   questions: questionsSimp,
  //   categoryName: 'Спрощення',
  //   backgroundColor: Colors.orange,
  //   icon: FontAwesomeIcons.scissors,
  // ),
  // KindOfEx(
  //   questions: questionsSynt,
  //   categoryName: 'Синтаксис',
  //   backgroundColor: Colors.purple,
  //   icon: FontAwesomeIcons.pen,
  // ),
  // KindOfEx(
  //   questions: questionsPunct,
  //   categoryName: 'Пунктуація',
  //   backgroundColor: Colors.lightBlue,
  //   icon: FontAwesomeIcons.exclamation,
  // ),
];
