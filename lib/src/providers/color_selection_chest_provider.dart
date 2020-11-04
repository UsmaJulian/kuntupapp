import 'package:flutter/material.dart';

class ColorChest with ChangeNotifier {
  String _chestcolor = '';
//GET
  get getChestColor {
    return _chestcolor;
  }

//SET
  set setChestColor(String color) {
    this._chestcolor = color;
    notifyListeners();
  }
}
