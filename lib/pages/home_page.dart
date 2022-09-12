import 'package:flutter/material.dart';
import 'package:login_shared_prefs/controllers/home_controller.dart';
import 'package:login_shared_prefs/models/person_model.dart';
import 'package:login_shared_prefs/repositories/home_repository_implement.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller =
      HomeController(homeRepository: HomeRepositoryImplement());
  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Personagens')),
      ),
      body: ValueListenableBuilder<List<PersonModel>>(
        valueListenable: _controller.personList,
        builder: (_, list, __) {
          return ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: list.length,
            itemBuilder: (_, index) => ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  list[index].image,
                ),
              ),
              title: Text(list[index].name),
              subtitle: Text(list[index].species),
              trailing: const Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
