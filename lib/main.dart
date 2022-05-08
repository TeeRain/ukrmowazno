import 'package:flutter/material.dart';
import 'package:ukrmowazno/ui/mowa_tests.dart';
import 'package:ukrmowazno/ui/main_screen.dart';

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
      initialRoute: '/m',
      routes: {
        '/m': (context) => const MainScreen(),
        '/t': (context) => const MyHomePage(
              title: 'aboba',
            ),
      },
    );
  }
}
