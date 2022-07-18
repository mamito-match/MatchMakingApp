import '../../domain/entities/response-model.dart';
import '../../domain/entities/user-model.dart';

abstract class UserInterface {
  Future<List<User>> fetchUsers();
  Future<User> getUser(String id);
  Response registerUser({required String email, required String password, required User user});
  Future<User> updateUser(String id, User user);
  Future<User> deleteUser(String id);
}
