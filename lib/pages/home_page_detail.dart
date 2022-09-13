import 'package:flutter/material.dart';
import 'package:login_shared_prefs/models/person_model.dart';

class HomePageDetail extends StatelessWidget {
  const HomePageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PersonModel;
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes')),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(args.image), radius: 250),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Text('Nome: ${args.name}'),
                    const Divider(),
                    Text(
                        'Sexo: ${(args.gender == 'Female') ? 'Mulher' : 'Homen'}'),
                    const Divider(),
                    Text('Especie: ${args.species}'),
                    const Divider(),
                    Text('Status: ${args.status}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
