import 'package:flutter/material.dart';

class GenderSelection with ChangeNotifier {
  String _gender = '';

  //GET
  get getGenderSelection {
    return _gender;
  }

//SET
  set setGenderSelection(String gender) {
    this._gender = gender;
    notifyListeners();
  }
}
