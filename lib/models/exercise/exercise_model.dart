// ignore_for_file: unused_element, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

enum ExerciseModelStatus { Ended, Loading, Error }

class ExerciseModel extends ChangeNotifier {
  ExerciseModelStatus _status = ExerciseModelStatus.Loading;
  String _errorCode = "";
  String _errorMessage = "";

  int _counter = 0;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  int get counter => _counter;
  ExerciseModelStatus get status => _status;

  ExerciseModel();

  ExerciseModel.instance() {
    //TODO Add code here
  }

  void incrementCounter() {
    _status = ExerciseModelStatus.Loading;
    // Method which will modify all value in widget thar are using variables found here
    notifyListeners();

    _counter++;

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }

  //Example of a class created automatically by Flutter MVC Generater
/*
  void getter() {
    _status = ExerciseModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }
*/

}
