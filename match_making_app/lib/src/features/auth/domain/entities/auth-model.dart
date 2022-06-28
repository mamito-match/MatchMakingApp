import 'dart:ffi';

import 'package:objectbox/objectbox.dart';

@Entity()
class UserAuth {
  int id;
  int userId;
  String email;
  String password;
  UserAuth(
      {this.id = 0,
      required this.userId,
      required this.email,
      required this.password});
}
