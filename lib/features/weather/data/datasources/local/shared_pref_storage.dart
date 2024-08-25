import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/features/weather/data/datasources/local/local_storage.dart';

class SharedPreferenceStorage implements LocalStorage {
  SharedPreferences? _preferences;

  Future<SharedPreferences?> _getPreference() async {
    _preferences ??= await SharedPreferences.getInstance();
    return _preferences;
  }

  @override
  Future<dynamic> getValue(String key) async {
    try {
      return (await _getPreference())?.getString(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> save(String key, String value) async {
    try {
      return (await _getPreference())?.setString(key, value) ??
          Future.value(false);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> remove(String key) async {
    try {
      return (await _getPreference())?.remove(key) ?? Future.value(false);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> removeAll(String key) async {
    try {
      return (await _getPreference())?.clear() ?? Future.value(false);
    } catch (e) {
      return false;
    }
  }
}
