import 'package:flutter/material.dart';
import 'package:ukrmowazno/model/option.dart';
import 'package:ukrmowazno/model/question.dart';
import 'package:ukrmowazno/utils.dart';

int resultScore = 0;

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        children: Utils.heightBetween(
          question.options
              .map((option) => buildOption(context, option))
              .toList(),
          height: 8,
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => {
        onClickedOption(option),
        // ignore: avoid_print
        if (option.isCorrect == true) {resultScore++, print(resultScore)}
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildAnswer(option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) => SizedBox(
        height: 50,
        child: Row(children: [
          Text(
            option.code,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(width: 12),
          Flexible(
              child: Text(
            option.text,
            style: const TextStyle(fontSize: 16),
          ))
        ]),
      );

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (!isSelected) {
      return Colors.grey.shade200;
    } else {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  }
}
