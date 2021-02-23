import 'package:flutter/material.dart';

class SelectionBloc with ChangeNotifier {
  String _pickedUser = "#";
  //function to set user
  String get pickedUser => _pickedUser;
  set pickedUser(String newUser) {
    _pickedUser = newUser;
    notifyListeners();
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
