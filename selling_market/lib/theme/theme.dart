import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.black),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

class SharedPreferencesHelper {
  static Future<bool> getGeceModuDurumu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('geceModu') ?? false;
  }

  static Future<void> toggleGeceModu(bool newValue) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('geceModu', newValue);
  }
}
