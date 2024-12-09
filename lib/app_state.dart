import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _horaCita = '';
  String get horaCita => _horaCita;
  set horaCita(String value) {
    _horaCita = value;
  }

  bool _antiguacita = false;
  bool get antiguacita => _antiguacita;
  set antiguacita(bool value) {
    _antiguacita = value;
  }

  bool _proximacita = false;
  bool get proximacita => _proximacita;
  set proximacita(bool value) {
    _proximacita = value;
  }
}
