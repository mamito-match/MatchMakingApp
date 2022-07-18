import 'dart:ffi';

import '../../../../../objectbox.g.dart';
import '../../domain/entities/auth-model.dart';
import '../../domain/entities/response-model.dart';
import '../../domain/entities/user-model.dart';

class UserLocalDataProvider {
  Future<List<User>>? fetchUsers() {
    return null;
  }

  Response registerUser(User user, String email, String password) {
    final store = openStore();
    late var box = store.box<User>();
    Response response = Response(message: '', success: false as Bool);
    box.put(user);

    Query<User> query = box
        .query(User_.firstName.equals(user.firstName) &
            User_.lastName.equals(user.lastName) &
            User_.age.equals(user.age))
        .build();

    User? userInfo = query.findFirst();

    if (userInfo != null) {
      var userAuth =
          UserAuth(userId: userInfo.id, email: email, password: password);

      late var boxAuth = store.box<UserAuth>();
      boxAuth.put(userAuth);

      response.success = true as Bool;
      response.message = "User Successfully Created";
      return response;
    } else {
      return response;
    }
  }

  Future<UserAuth?> currentUser() async {
    return null;
  }
}
