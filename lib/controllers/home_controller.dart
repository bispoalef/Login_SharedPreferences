// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:login_shared_prefs/models/person_model.dart';
import 'package:login_shared_prefs/repositories/home_repository.dart';

class HomeController {
  final HomeRepository homeRepository;

  HomeController({
    required this.homeRepository,
  });
  ValueNotifier<List<PersonModel>> personList =
      ValueNotifier<List<PersonModel>>([]);

  fetch() async {
    personList.value = await homeRepository.getList();
  }
}
