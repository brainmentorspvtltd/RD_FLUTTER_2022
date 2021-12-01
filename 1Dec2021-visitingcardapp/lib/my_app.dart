import 'package:flutter/material.dart';
import 'package:visitingcard/screens/home_screen.dart';

class VisitingCardApp extends StatelessWidget {
  const VisitingCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Visiting Card",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green.shade900,
      ),
      home: const HomeScreen(),
    );
  }
}
