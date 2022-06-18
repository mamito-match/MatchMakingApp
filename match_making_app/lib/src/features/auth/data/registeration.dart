import '../../../../objectbox.g.dart';
import '../domain/auth-model.dart';
// created by `flutter pub run build_runner build`

class Registeration {
  late final Store store;

  void Register(
      String firstname,
      String lastName,
      int age,
      String gender,
      String religion,
      String address,
      String education,
      String employment,
      String about,
      String email,
      String password) {
            final store = openStore();
    final box = store.box<User>();
    var user = User(
        firstName: firstname,
        lastName: lastName,
        age: age,
        gender: gender,
        religion: religion,
        address: address,
        education: education,
        employment: employment,
        about: about,
        email: email,
        password: password);

    box.put(user);
  }
}
