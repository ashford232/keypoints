// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class AppState {
  final ThemeMode? themeMode;
  final List<String> recentFiles;

  AppState({
    this.themeMode = ThemeMode.system,
    this.recentFiles = const <String>[],
  });

  AppState copyWith({ThemeMode? themeMode, List<String>? recentFiles}) {
    return AppState(
      themeMode: themeMode ?? this.themeMode,
      recentFiles: recentFiles ?? this.recentFiles,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeMode': themeMode?.name,
      'recentFiles': recentFiles,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      themeMode: map['themeMode'] == null
          ? ThemeMode.system
          : ThemeMode.values.firstWhere((tm) => tm.name == map['themeMode']),
      recentFiles: map['recentFiles'] == null
          ? []
          : List<String>.from((map['recentFiles'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppState.fromJson(String source) =>
      AppState.fromMap(json.decode(source) as Map<String, dynamic>);
}
