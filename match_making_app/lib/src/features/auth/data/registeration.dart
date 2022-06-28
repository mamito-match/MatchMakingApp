import '../../../../objectbox.g.dart';
import '../domain/entities/user-model.dart';
// created by `flutter pub run build_runner build`

class Registeration {
  late final Store store;

  void Register(
    String firstname,
    String lastname,
    int age,
    String gender,
    String religion,
    String address,
    String education,
    String employment,
    String about,
  ) {
    final store = openStore();
    final box = store.box<User>();
    var user = User(
      firstName: firstname,
      lastName: lastname,
      age: age,
      gender: gender,
      religion: religion,
      address: address,
      education: education,
      employment: employment,
      about: about,
    );

     box.put(user);
    // Query<User> query = box.query(
    // User.firstName.equals('Joe') &
    // User.lastName.equals(1970)).build();
    // List<User> userInfo = query.find();

    // var userAuth = UserAuth(

    // )

  }
}
