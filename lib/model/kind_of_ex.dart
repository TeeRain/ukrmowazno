import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/model/category.dart';

class KindOfEx {
  final String categoryName;
  final Color backgroundColor;
  final IconData icon;
  final List<Category> categories;

  KindOfEx({
    required this.categories,
    required this.categoryName,
    this.backgroundColor = Colors.orange,
    this.icon = FontAwesomeIcons.question,
  });
}
