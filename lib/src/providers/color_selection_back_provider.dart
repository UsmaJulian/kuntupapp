import 'package:flutter/material.dart';

class ColorBack with ChangeNotifier {
  String _backcolor = '';
//GET
  get getBackColor {
    return _backcolor;
  }

//SET
  set setBackColor(String color) {
    this._backcolor = color;
    notifyListeners();
  }
}
