import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  late SharedPreferences _prefs;
  bool _isPrefsInitialized = false; // New field to track initialization

  SharedPreferencesUtils._();

  static final SharedPreferencesUtils _instance = SharedPreferencesUtils._();

  factory SharedPreferencesUtils() {
    return _instance;
  }

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _isPrefsInitialized = true; // Set true once initialized
  }

  Future<void> _initialize() {
    return _isPrefsInitialized ? Future.value() : init();
  }

  Future<void> setToken(String token) async {
    await _initialize();
    _prefs.setString('token', token);
  }

  String? getToken() {
    if (!_isInitialized()) {
      print('SharedPreferences has not been initialized yet.');
      return null; // Return null if not initialized
    }
    return _prefs.getString('token');
  }

  Future<void> removeToken() async {
    await _initialize();
    await _prefs.remove('token');
  }

  bool _isInitialized() {
    return _isPrefsInitialized; // Use the new field for checks
  }
}
