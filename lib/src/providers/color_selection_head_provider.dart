import 'package:flutter/material.dart';

class ColorHead with ChangeNotifier {
  String _headcolor = '';
//GET
  get getHeadColor {
    return _headcolor;
  }

//SET
  set setHeadColor(String color) {
    this._headcolor = color;
    notifyListeners();
  }
}
