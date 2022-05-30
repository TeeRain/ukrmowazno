import 'package:flutter/material.dart';
import 'package:ukrmowazno/model/option.dart';
import 'package:ukrmowazno/model/question.dart';
import 'package:ukrmowazno/widget/options_widget.dart';

class EndTestPage {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Завершення тестування'),
        content: Text(
            'Ви впевненні що хочете завершити тестування?Ваш результат $resultScore'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('НІ'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              resultScore = 0;
            },
            child: const Text('ТАК'),
          ),
        ],
      ),
    );
  }
}
