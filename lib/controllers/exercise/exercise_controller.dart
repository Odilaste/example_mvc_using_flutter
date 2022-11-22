import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:mvc_exercise/models/exercise/exercise_model.dart';

class ExerciseController {
  ExerciseController();

  //Example of a class created automatically by Flutter MVC Generater
/*
  void getter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }
*/
  int _counter = 0;
  int get get_counter => _counter;

  String title = "Exemple MVC Flutter";
  String get get_title => title;
  
  void incrementCounter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);

    viewModel.incrementCounter();
    _counter = viewModel.counter;
  }
}
