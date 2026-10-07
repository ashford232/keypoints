import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keypoints/app/data/models/app_state.dart';
import 'package:keypoints/app/data/providers/app_providers.dart';
import 'package:keypoints/app/services/shared_prefs.dart';

class AppNotifier extends AsyncNotifier<AppState> {
  @override
  AppState build() {
    return prefs.getAppState();
  }

  SharedPrefs get prefs => ref.read(appPrefsProvider);

  void changeThemeMode({required ThemeMode themeMode}) {
    state = AsyncValue.data(
      state.value?.copyWith(themeMode: themeMode) ?? AppState(),
    );
    save();
  }

  void addRecentFiles({required String filepath}) {
    state.value?.recentFiles.add(filepath);
    save();
  }

  Future<void> save() async {
    return prefs.saveAppState(appState: state.value ?? AppState());
  }
}
