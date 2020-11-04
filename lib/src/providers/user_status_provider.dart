import 'package:flutter/material.dart';

class Userstatus with ChangeNotifier {
  String _status = 'Uninitialized';

// GET Status
  get userStatus => _status;

//SET Status

  set setUserStatus(String status) {
    this._status = status;
    notifyListeners();
  }
}

final Userstatus userStatus = Userstatus();
