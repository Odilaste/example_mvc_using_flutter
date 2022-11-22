// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mvc_exercise/views/exercise/exercise_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVC Exercice UNILUK',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExerciseView(),
    );
  }
}
