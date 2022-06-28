import '../entities/response-model.dart';
import '../entities/user-model.dart';

abstract class UserInterface {
  Future<List<User>> fetchUsers();
  Future<User> getUser(String id);
  Response registerUser(User user, String email, String password);
  Future<User> updateUser(String id, User user);
  Future<User> deleteUser(String id);
}
