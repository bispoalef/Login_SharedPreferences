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
        color: Colors.green.shade100,
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Image.asset(
              'lib/assets/rick_and_morty.png',
              errorBuilder: (_, __, ___) => const Icon(Icons.person),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade500,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextField(
                      onChanged: _controller.setLogin,
                      decoration: const InputDecoration(label: Text('Login')),
                    ),
                    TextField(
                      onChanged: _controller.setSenha,
                      obscureText: true,
                      decoration: const InputDecoration(label: Text('Senha')),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            ValueListenableBuilder<bool>(
              valueListenable: _controller.loader,
              builder: (_, loader, __) => loader
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        _controller.auth().then(
                          (value) {
                            if (value == true) {
                              Navigator.of(context)
                                  .pushReplacementNamed(Routes.HOME);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(seconds: 5),
                                  elevation: 5,
                                  content: Text(
                                    'Login ou senha inválidos.',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      },
                      child: const Text('ENTRAR'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
