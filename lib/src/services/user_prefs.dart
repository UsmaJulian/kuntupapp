import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs {
  static final UserPrefs _instance = new UserPrefs._internal();

  factory UserPrefs() {
    return _instance;
  }
  UserPrefs._internal();
  SharedPreferences _prefs;
  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  get visto {
    return _prefs.getBool('visto') ?? false;
  }

  set visto(bool value) {
    _prefs.setBool('visto', value);
  }
}
