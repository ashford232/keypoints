import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keypoints/app/data/notifiers/app_notifiers.dart';
import 'package:keypoints/app/services/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefProvider = Provider<SharedPreferences>((ref) => throw UnimplementedError());

final appPrefsProvider = Provider((ref) => SharedPrefs(prefs: ref.watch(sharedPrefProvider)));
final appNotifierProvider = AsyncNotifierProvider(() => AppNotifier());
