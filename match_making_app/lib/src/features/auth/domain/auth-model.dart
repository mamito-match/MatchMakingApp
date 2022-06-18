import 'dart:ffi';

import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  int id;
  String firstName;
  String lastName;
  int age;
  String gender;
  String religion;
  String address;
  String education;
  String employment;
  String about;
  String email;
  String password;

  User({
    this.id = 0,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.religion,
    required this.address,
    required this.education,
    required this.employment,
    required this.about,
    required this.email,
    required this.password
  });
}
