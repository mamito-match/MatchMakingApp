import 'dart:ffi';

import 'package:objectbox/objectbox.dart';

// @Entity()
// class User {
//   int id;
//   String firstName;
//   String lastName;
//   int age;
//   String gender;
//   String religion;
//   String address;
//   String education;
//   String employment;
//   String about;
//   String email;
//   String password;

//   User({
//     this.id = 0,
//     required this.firstName,
//     required this.lastName,
//     required this.age,
//     required this.gender,
//     required this.religion,
//     required this.address,
//     required this.education,
//     required this.employment,
//     required this.about,
//     required this.email,
//     required this.password
//   });
// }

@Entity()
class Quiz {
  int id;
  String question;
  int weight;
  int choice_id;
  Quiz({
    this.id = 0,
    required this.question,
    required this.weight,
    required this.choice_id
  });
}

@Entity()
class  Choice{
  int id;
String value;
int weight;
  Choice({
    this.id = 0,
    required this.value,
    required this.weight
  });
}

@Entity()
class  Answer{
  int id;
int user_id;
int quiz_id;
int choice_id;
  Answer({
    this.id = 0,
    required this.user_id,
    required this.quiz_id,
    required this.choice_id
  });
}

@Entity()
class  CompatibilityLog{
  int id;
int user_id;
int compatible_user_id;
int percentage; 
int difference;
DateTime date_stamp;
  CompatibilityLog({
    this.id = 0,
    required this.user_id,
    required this.compatible_user_id,
    required this.percentage,
    required this.difference,
    required this.date_stamp
  });
}

