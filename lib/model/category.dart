import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'question.dart';

class Category {
  final String categoryName;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;

  Category({
    required this.questions,
    required this.categoryName,
    this.backgroundColor = Colors.orange,
    this.icon = FontAwesomeIcons.question,
  });
}
