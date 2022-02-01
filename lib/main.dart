import 'package:flutter/material.dart';
import 'package:ukrmowazno/ui/mowa_tests.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/tests',
      routes: {
        //'/main': (context) => ,
        '/tests': (context) => MyHomePage(
              title: 'aboba',
            ),
      },
    );
  }
}
