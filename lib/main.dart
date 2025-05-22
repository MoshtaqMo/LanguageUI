import 'package:flutter/material.dart';
import 'package:languageui/intro.dart';
import 'package:languageui/lesson_page.dart';
import 'package:languageui/units.dart';
import 'package:languageui/units_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intro(),
      routes: {
        "lesson":(context)=>LessonPage(),
        "unit":(context)=>Units(title: '', suptitle: '', precent: 0, precentValue: '', color: Colors.blueGrey,),
        "unitpage":(context)=>UnitsPage(unitTitle: '', unitSubtitle: '', unitProgress: 0, unitColor: Colors.black, chapters: [], exercises: [],),
      },
    );
  }
}