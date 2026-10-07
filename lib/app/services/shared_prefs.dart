import 'package:flutter/foundation.dart';
import 'package:keypoints/app/data/models/app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  final SharedPreferences _prefs;

  SharedPrefs({required this._prefs});
  final appKey = "app";
  Future<void> saveAppState({required AppState appState}) async {
    try {
      final value = appState.toJson();
      await _prefs.setString(appKey, value);
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  AppState getAppState() {
    try {
      final state = _prefs.getString(appKey);
      return state == null ? AppState() : AppState.fromJson(state);
    } catch (err) {
      debugPrint(err.toString());
      return AppState();
    }
  }
}
