import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/enums/preferences_keys.dart';

class LocalManager {
  static LocalManager _instance = LocalManager._init();
  late SharedPreferences _preferences;
  static LocalManager get instance => _instance;

  LocalManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  static preferencesInit() async {
    if (instance._preferences == null) {
      instance._preferences = await SharedPreferences.getInstance();
    }
    return;
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await _preferences.setString(key.toString(), value);
  }

  String? getStringValue(PreferencesKeys key) =>
      _preferences.getString(key.toString()) ?? "";
}
