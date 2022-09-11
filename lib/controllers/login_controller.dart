class LoginController {
  String? _login;
  setLogin(String login) => _login = login;

  String? _pass;
  setSenha(String pass) => _pass = pass;

  Future<bool> auth() async {
    if (_login == 'adm' && _pass == '123') {
      return true;
    }
    return false;
  }
}
