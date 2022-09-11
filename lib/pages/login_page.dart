import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Icon(Icons.people),
            const TextField(),
            const TextField(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ENTRAR'),
            )
          ],
        ),
      ),
    );
  }
}
