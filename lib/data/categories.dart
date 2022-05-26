import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/data/questions.dart';
import 'package:ukrmowazno/model/category.dart';

final categories = <Category>[
  Category(
    questions: questions,
    categoryName: 'Тести',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.rocket,
    description: 'Тести на різні теми мовознавства',
  ),
  Category(
    questions: questions,
    categoryName: 'Симулятор ЗНО',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.atom,
    description: 'Справжній симулятор ЗНО',
  ),
  Category(
    questions: questions,
    categoryName: 'Підлови себе',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.squareRootVariable,
    description: 'Тести з ЗНО, але в тебе є тільки 3 помилки',
  ),
  Category(
    questions: questions,
    categoryName: 'Власне висловлення',
    backgroundColor: Colors.lightBlue,
    icon: FontAwesomeIcons.dna,
    description: 'Наша платна функція, де наші викладачі перевірять твоє есе',
  ),
];
