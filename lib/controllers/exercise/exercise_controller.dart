import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:mvc_exercise/models/exercise/exercise_model.dart';

class ExerciseController {
  ExerciseController();

  void getter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }

  void incrementCounter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);

    viewModel.incrementCounter();
  }

  int get_counter(BuildContext context) {
    ExerciseModel viewModel =
        Provider.of<ExerciseModel>(context, listen: false);

    return viewModel.get_coounter;
  }
}
