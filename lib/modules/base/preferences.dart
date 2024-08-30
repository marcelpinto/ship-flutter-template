import 'package:lite_ref/lite_ref.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Create a singleton instance of SharedPreferences
/// This loads the preferences in memory and can be accessed
/// with `preferences.assertInstance`.
/// 
/// More info at https://pub.dev/packages/shared_preferences
final preferences = Ref.asyncSingleton(
  () => SharedPreferences.getInstance(),
);
