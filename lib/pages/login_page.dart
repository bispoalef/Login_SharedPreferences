import 'package:flutter/material.dart';
import 'package:login_shared_prefs/controllers/login_controller.dart';
import 'package:login_shared_prefs/routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Icon(Icons.people),
            TextField(
              onChanged: _controller.setLogin,
              decoration: const InputDecoration(label: Text('Login')),
            ),
            TextField(
              onChanged: _controller.setSenha,
              obscureText: true,
              decoration: const InputDecoration(label: Text('Senha')),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.auth().then(
                  (value) {
                    if (value == true) {
                      Navigator.of(context).pushReplacementNamed(Routes.HOME);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Login ou senha incorreto.')));
                    }
                  },
                );
              },
              child: const Text('ENTRAR'),
            )
          ],
        ),
      ),
    );
  }
}
