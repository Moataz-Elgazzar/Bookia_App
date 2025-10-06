import 'dart:convert';

import 'package:bookia/features/auth/data/models/auth_response_login/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SheredPreferences {
  static late SharedPreferences prefs;

  static const String kUserData = "userData";

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static saveUserData(Data? user) {
    if (user == null) {
      return;
    }
    var userData = user.toJson();
    var userString = jsonEncode(userData);
    setData(kUserData, userString);
  }

  static Data? getUserData() {
    String? stringData = getdata(kUserData);
    if (stringData == null) {
      return null;
    }
    var stringToJson = jsonDecode(stringData);
    return Data.fromJson(stringToJson);
  }

  static setData(String key, dynamic value) {
    if (value is int) {
      prefs.setInt(key, value);
    }
    if (value is String) {
      prefs.setString(key, value);
    }
    if (value is bool) {
      prefs.setBool(key, value);
    }
    if (value is List<String>) {
      prefs.setStringList(key, value);
    }
    if (value is double) {
      prefs.setDouble(key, value);
    }
  }

  static dynamic getdata(String key) {
    return prefs.get(key);
  }

  static removedata(String key) {
    prefs.remove(key);
  }
}
