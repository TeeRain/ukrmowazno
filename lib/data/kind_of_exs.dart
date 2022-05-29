import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/data/categories.dart';
import 'package:ukrmowazno/model/kind_of_ex.dart';

final kinds = <KindOfEx>[
  KindOfEx(
    categories: testCategory,
    categoryName: 'Тести',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.question,
  ),
  KindOfEx(
    categories: testCategory,
    categoryName: 'Симулятор ЗНО',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.check,
  ),
  KindOfEx(
    categories: testCategory,
    categoryName: 'Підлови себе',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.heart,
  ),
  KindOfEx(
      categories: testCategory,
      categoryName: 'Власне висловлювання',
      backgroundColor: Colors.lightBlue,
      icon: FontAwesomeIcons.pencil),
];
