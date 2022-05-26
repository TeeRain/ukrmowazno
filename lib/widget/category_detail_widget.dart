import 'package:flutter/material.dart';
import 'package:ukrmowazno/model/category.dart';

class CategoryDetailWidget extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onSelectedCategory;

  const CategoryDetailWidget({
    Key? key,
    required this.category,
    required this.onSelectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onSelectedCategory(category),
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          width: MediaQuery.of(context).size.width * 0.55,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImage(),
              // Container(height: 8),
              // Text(
              //   category.categoryName,
              //   style:
              //       const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              // ),
              // Container(height: 4),
              // Text(
              //   category.description,
              //   style: const TextStyle(fontSize: 16),
              // )
            ],
          ),
        ),
      );

  Widget buildImage() => Container(
        height: 15,
        decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.circular(15), //4 uspishnist
        ),
      );
}
