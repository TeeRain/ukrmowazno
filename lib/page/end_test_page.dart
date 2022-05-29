import 'package:flutter/material.dart';

class EndTestPage {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Завершення тестування'),
        content: const Text('Ви впевненні що хочете завершити тестування?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('НІ'),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false),
            child: const Text('ТАК'),
          ),
        ],
      ),
    );
  }
}
