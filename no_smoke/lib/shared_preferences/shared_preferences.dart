import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesHelper {
  late SharedPreferences _prefs;
  
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Métodos para armazenar e recuperar strings
  String getString(String key, {String defaultValue = ''}) {
    return _prefs.getString(key) ?? defaultValue;
  }

  setDateTime(String s, DateTime selectedDate) {}
}