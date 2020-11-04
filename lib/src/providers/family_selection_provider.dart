import 'package:flutter/material.dart';

class FamilySelection with ChangeNotifier {
  String _family = '';

  //GET
  get getFamilySelection {
    return _family;
  }

//SET
  set setFamilySelection(String family) {
    this._family = family;
    notifyListeners();
  }
}
