import 'package:flutter/material.dart';
import 'package:ukrmowazno/model/category.dart';
import 'package:ukrmowazno/model/option.dart';
import 'package:ukrmowazno/model/question.dart';
import 'package:ukrmowazno/page/end_test_page.dart';
import 'package:ukrmowazno/widget/options_widget.dart';

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key? key,
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
          final question = category.questions[index];

          return buildQuestion(context: context, question: question);
        },
      );

  Widget buildQuestion({
    required BuildContext context,
    required Question question,
  }) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              question.text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Виберіть правильну відповідь',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.deepOrange, Colors.purple]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                          //make color or elevated button transparent
                        ),
                        onPressed: () => EndTestPage().showAlertDialog(context),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text("Завершити тестування"),
                        ))))
          ],
        ),
      );
}
