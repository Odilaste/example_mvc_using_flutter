import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:mvc_exercise/models/exercise/exercise_model.dart';
// import controller
import 'package:mvc_exercise/controllers/exercise/exercise_controller.dart';

class ExerciseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExerciseController viewController = ExerciseController();

    return ChangeNotifierProvider<ExerciseModel>(
      create: (context) => ExerciseModel.instance(),
      child: Consumer<ExerciseModel>(
        builder: (context, viewModel, child) {
          return;
        },
      ),
    );
  }
}
