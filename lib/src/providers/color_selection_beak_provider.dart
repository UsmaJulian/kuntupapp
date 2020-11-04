import 'package:flutter/material.dart';

class ColorBeak with ChangeNotifier {
  String _beakcolor = '';
//GET
  get getBeakColor {
    return _beakcolor;
  }

//SET
  set setBeakColor(String color) {
    this._beakcolor = color;
    notifyListeners();
  }
}
