import 'package:flutter/cupertino.dart';
import 'package:login_shared_prefs/services/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> loader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String login) => _login = login;

  String? _pass;
  setSenha(String pass) => _pass = pass;

  Future<bool> auth() async {
    loader.value = true;

    await Future.delayed(const Duration(seconds: 2));
    loader.value = false;

    if (_login == 'adm' && _pass == '123') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
