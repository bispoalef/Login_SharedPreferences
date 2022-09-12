import 'package:login_shared_prefs/models/person_model.dart';

abstract class HomeRepository {
  Future<List<PersonModel>> getList();
}
