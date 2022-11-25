import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'hive_key.dart';

@lazySingleton
class HiveManager {
  final Box<dynamic> _box;

  HiveManager(this._box);

  // Token
  Future<void> saveToken(String? token) async {
    await _box.put(HiveKey.token, token);
  }

  Future<void> deleteToken() async {
    await _box.delete(HiveKey.token);
  }

  String? getToken() {
    return _box.get(HiveKey.token);
  }

  // Email
  Future<void> saveEmail(String? email) async {
    await _box.put(HiveKey.email, email);
  }

  Future<void> deleteEmail() async {
    await _box.delete(HiveKey.email);
  }

  String? getEmail() {
    return _box.get(HiveKey.email);
  }

  // Password
  Future<void> savePassword(String? password) async {
    await _box.put(HiveKey.password, password);
  }

  Future<void> deletePassword() async {
    await _box.delete(HiveKey.password);
  }

  String? getPassword() {
    return _box.get(HiveKey.password);
  }

  // Remember Me
  Future<void> saveRememberMe(bool? rememberMe) async {
    await _box.put(HiveKey.rememberMe, rememberMe);
  }

  Future<void> deleteRememberMe() async {
    await _box.delete(HiveKey.rememberMe);
  }

  bool? getRememberMe() {
    return _box.get(HiveKey.rememberMe);
  }

  Future<void> deleteHiveData() async {
    await _box.clear();
  }
}
