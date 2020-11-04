import 'package:flutter/material.dart';

class ColorTail with ChangeNotifier {
  String _tailcolor = '';
//GET
  get getTailColor {
    return _tailcolor;
  }

//SET
  set setTailColor(String color) {
    this._tailcolor = color;
    notifyListeners();
  }
}
