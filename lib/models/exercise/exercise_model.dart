// ignore_for_file: unused_element, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

enum ExerciseModelStatus {
  Ended,
  Loading,
  Error,
}

class ExerciseModel extends ChangeNotifier {
  ExerciseModelStatus _status = ExerciseModelStatus.Error;
  String _errorCode = "";
  String _errorMessage = "";

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  ExerciseModelStatus get status => _status;

  ExerciseModel();

  ExerciseModel.instance() {
    //TODO Add code here
  }

  int _counter = 0;

  void incrementCounter() {
    _counter++;
  }

  void getter() {
    _status = ExerciseModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = ExerciseModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = ExerciseModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = ExerciseModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ExerciseModelStatus.Ended;
    notifyListeners();
  }
}
