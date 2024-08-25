abstract class LocalStorage {
  Future<bool> save(String key, String value);
  Future<dynamic> getValue(String key);
  Future<bool> remove(String key);
  Future<bool> removeAll(String key);
}

class StorageKeys {
  static const forecasts = "forecasts";
}
