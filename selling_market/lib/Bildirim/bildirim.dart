import 'package:shared_preferences/shared_preferences.dart';

class NotificationHelper {
  static Future<bool> getNotificationPermission() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('notificationPermission') ?? false;
  }

  static Future<void> setNotificationPermission(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notificationPermission', value);
  }
}
