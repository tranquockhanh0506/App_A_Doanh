import 'package:shared_preferences/shared_preferences.dart';

AppShared appShared = AppShared();

class AppShared {
  static  SharedPreferences _prefs;
  static String _keyPremium = 'premium';

  static _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> setPremium(bool isPremium) async {
    await _init();
    _prefs.setBool(_keyPremium, isPremium);
  }

  Future<bool> getPremium() async {
    await _init();
    return _prefs.getBool(_keyPremium) ?? false;
  }
}
