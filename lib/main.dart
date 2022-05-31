import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ukrmowazno/page/home_page.dart';
import 'package:ukrmowazno/sql/database.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // Init of database service, since it's singleton, we can use it's instance
  // just using Database().someMethod() in any place of our app
  DatabaseService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Quiz App';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),

        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
        }, // CategoryPage(category: categories.first),
      );
}
