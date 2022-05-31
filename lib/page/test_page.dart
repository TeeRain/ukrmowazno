import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ukrmowazno/data/categories.dart';
import 'package:ukrmowazno/data/user.dart';
import 'package:ukrmowazno/model/categories_enum.dart';
import 'package:ukrmowazno/model/category.dart';
import 'package:ukrmowazno/model/kind_of_ex.dart';
import 'package:ukrmowazno/sql/database.dart';
import 'package:ukrmowazno/widget/category_header_widget.dart';

class TestPage extends StatefulWidget {
  final KindOfEx kind;
  const TestPage({
    Key? key,
    required this.kind,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Category> categories = testCategory;
  bool _isLoading = true;

  @override
  void initState() {
    _loadQuestions();
    super.initState();
  }

  Future<void> _loadQuestions() async {
    for (int i = 0; i < CategoriesEnum.values.length; i++) {
      final category = CategoriesEnum.values[i];

      final questions = await DatabaseService()
          .getRandomQuestionsByCategory(category: category);

      categories[i] = categories[i].copyWith(questions: questions);
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('ЄМова'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome(username),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.purple],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: _isLoading
              ? const SpinKitRing(color: Colors.deepOrange)
              : ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/smoke-mucky.gif.gif",
                      height: 200.0,
                      width: 200.0,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    buildCategories(context),
                  ],
                ),
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Привіт, $username!',
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ],
      );

  Widget buildCategories(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: testCategory
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );
}
