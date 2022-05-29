import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ukrmowazno/model/category.dart';
import 'package:ukrmowazno/model/kind_of_ex.dart';
import 'package:ukrmowazno/page/category_page.dart';
import 'package:ukrmowazno/page/test_page.dart';
import 'package:ukrmowazno/widget/options_widget.dart';

class KindHeaderWidget extends StatelessWidget {
  final KindOfEx kindOfEx;

  const KindHeaderWidget({
    Key? key,
    required this.kindOfEx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TestPage(kind: kindOfEx),
          )),
          resultScore = 0
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: kindOfEx.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(kindOfEx.icon, color: Colors.white, size: 36),
              const SizedBox(height: 12),
              Text(
                kindOfEx.categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      );
}
