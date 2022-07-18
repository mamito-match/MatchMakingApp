import 'package:equatable/equatable.dart';
import '../domain/auth_models/confirm_password.dart';
import '../domain/auth_models/email.dart';
import '../domain/auth_models/name.dart';
import '../domain/auth_models/password.dart';
import 'package:formz/formz.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.name = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    required this.image,
    this.status = FormzStatus.pure, ConfirmPassword? ConfirmPassword,
  });

  final Name name;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final String image;
  final FormzStatus status;

  @override
  List<Object> get props => [
    image,
    name,
    email,
    password,
    confirmPassword,
    status
  ];

  SignUpState copyWith({
    required String image,
    required Name name,
    required Email email,
    required Password password,
    required ConfirmPassword confirmPassword,
    required FormzStatus status,
  }) {
    return SignUpState(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      image: image,
      status: status,
    );
  }
}