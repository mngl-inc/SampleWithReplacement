import 'package:flutter/material.dart';
import 'package:sample_app/static_variables.dart';

// this is the main Bloc
// Every signal section has control.
class MainBloc with ChangeNotifier {
  // the current section
  int _current_section = Variables.login;
  //function to set user
  int get current_section => _current_section;
  set current_section(int newSection) {
    _current_section = newSection;
    notifyListeners();
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
