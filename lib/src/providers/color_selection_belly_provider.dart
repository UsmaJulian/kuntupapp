import 'package:flutter/material.dart';

class ColorBelly with ChangeNotifier {
  String _bellycolor = '';
//GET
  get getBellyColor {
    return _bellycolor;
  }

//SET
  set setBellyColor(String color) {
    this._bellycolor = color;
    notifyListeners();
  }
}
