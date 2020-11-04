import 'package:flutter/material.dart';

class ColorFoots with ChangeNotifier {
  String _footsColor = '';
//GET
  get getFootsColor {
    return _footsColor;
  }

//SET
  set setFootsColor(String color) {
    this._footsColor = color;
    notifyListeners();
  }
}
