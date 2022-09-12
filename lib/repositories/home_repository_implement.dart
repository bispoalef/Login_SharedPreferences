import 'package:dio/dio.dart';
import 'package:login_shared_prefs/models/person_model.dart';
import 'package:login_shared_prefs/repositories/home_repository.dart';

class HomeRepositoryImplement implements HomeRepository {
  @override
  Future<List<PersonModel>> getList() async {
    try {
      var response =
          await Dio().get('https://rickandmortyapi.com/api/character');
      List list = response.data['results'];

      return list
          .map((e) => PersonModel(
                id: e['id'],
                name: e['name'],
                status: e['status'],
                species: e['species'],
                type: e['type'],
                gender: e['gender'],
                image: e['image'],
                url: e['url'],
              ))
          .toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
