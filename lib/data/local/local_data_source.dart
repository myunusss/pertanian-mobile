import 'package:injectable/injectable.dart';

import 'hive/hive_manager.dart';

@lazySingleton
class LocalDataSource {
  final HiveManager _hiveManager;

  LocalDataSource(this._hiveManager);

  // Token
  Future<void> saveToken(String? token) async {
    await _hiveManager.saveToken(token);
  }

  Future<void> deleteToken() async {
    await _hiveManager.deleteToken();
  }

  String? getToken() {
    return _hiveManager.getToken();
  }

  // Email
  Future<void> saveEmail(String? email) async {
    await _hiveManager.saveEmail(email);
  }

  Future<void> deleteEmail() async {
    await _hiveManager.deleteEmail();
  }

  String? getEmail() {
    return _hiveManager.getEmail();
  }

  // Password
  Future<void> savePassword(String? password) async {
    await _hiveManager.savePassword(password);
  }

  Future<void> deletePassword() async {
    await _hiveManager.deletePassword();
  }

  String? getPassword() {
    return _hiveManager.getPassword();
  }

  // Remember Me
  Future<void> saveRememberMe(bool? rememberMe) async {
    await _hiveManager.saveRememberMe(rememberMe);
  }

  Future<void> deleteRememberMe() async {
    await _hiveManager.deleteRememberMe();
  }

  bool? getRememberMe() {
    return _hiveManager.getRememberMe();
  }

  Future<void> deleteHiveData() async {
    await _hiveManager.deleteHiveData();
  }
}
