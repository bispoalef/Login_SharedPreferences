import 'package:flutter/material.dart';
import 'package:login_shared_prefs/models/person_model.dart';

class HomePageDetail extends StatelessWidget {
  const HomePageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PersonModel;
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes')),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.network(args.image),
            Text('Nome: ${args.name}'),
            Text('Sexo: ${(args.gender == 'Female') ? 'Mulher' : 'Homen'}'),
            Text('Especie: ${args.species}'),
            Text('Status: ${args.status}'),
          ],
        ),
      ),
    );
  }
}
