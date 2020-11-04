import 'package:flutter/material.dart';

class ColorWings with ChangeNotifier {
  String _wingscolor = '';
//GET
  get getWingsColor {
    return _wingscolor;
  }

//SET
  set setWingsColor(String color) {
    this._wingscolor = color;
    notifyListeners();
  }
}
