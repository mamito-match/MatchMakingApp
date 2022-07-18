import 'package:match_making_app/src/features/auth/data/data_source/user_local_data_provider.dart';

import '../../domain/entities/response-model.dart';
import '../../domain/entities/user-model.dart';
import '../interfaces/UserInterface.dart';

class UserRepository implements UserInterface {
  late final UserLocalDataProvider userLocalDataProvider;

  @override
  Future<User> deleteUser(String id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> fetchUsers() {
    // TODO: implement fetchUsers
    throw UnimplementedError();
  }

  @override
  Future<User> getUser(String id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Response registerUser({required String email, required String password, required User user}) {
    try {
      final Response response =
          userLocalDataProvider.registerUser(user, email, password);
      return response;
    } catch (e) {
      print(e);
    }
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<User> updateUser(String id, User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  Future<bool> isSignedIn() async {
    final currentUser = await userLocalDataProvider.currentUser();
    return currentUser != null;
  }

  Future<String?> getCurrentUser() async {
    return (await userLocalDataProvider.currentUser())?.email;
  }
}
