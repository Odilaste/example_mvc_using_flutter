// ignore_for_file: unused_local_variable, use_key_in_widget_constructors

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
          return Scaffold(
      appBar: AppBar(
        title: Text(viewController.get_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const Text(
              'Thanks our Dear Developers/Programmers',
            ),
            Text(
              viewController.get_counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          viewController.incrementCounter(context)
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
        },
      ),
    );
  }
}
