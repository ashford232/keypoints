import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keypoints/app/data/providers/app_providers.dart';
import 'package:keypoints/app/screens/app.dart';
import 'package:keypoints/shared/themes/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  final prefs = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [sharedPrefProvider.overrideWithValue(prefs)],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    preload();
  }

  Future<void> preload() async {
    final _ = ref.read(appNotifierProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keypoints',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      home: const App(),
    );
  }
}
