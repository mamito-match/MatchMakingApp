import 'dart:async';
import 'package:bloc/bloc.dart';
import '../data/repositories/UserRepository.dart';
import '../domain/auth_models/confirm_password.dart';
import '../domain/auth_models/email.dart';
import '../domain/auth_models/name.dart';
import '../domain/auth_models/password.dart';
import 'package:formz/formz.dart';
import '../domain/entities/user-model.dart';
import '../presentation/sign_up_event.dart';
import '../presentation/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {

  SignUpBloc() : super(const SignUpState(image: ''));

  @override
  void onTransition(Transition<SignUpEvent, SignUpState> transition) {
    //print(transition);
    super.onTransition(transition);
  }

Future<void> _SignUpWithEmail() async 
{
     User user = User(firstName: 'Netsanet', lastName: 'a', gender: 'a', employment: 'a', age: 6, about: 'a', address: 'a', education: 'a', religion: 'a');
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress, confirmPassword: state.confirmPassword, email: state.email, image: '', password: state.password, name: state.name));
    try {
     // _userRepository.registerUser(user: user, email: state.email.value, password: state.password.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess, confirmPassword: state.confirmPassword, email: state.email, image: '', name: state.name, password: state.password));
    // ignore: nullable_type_in_catch_clause
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure, confirmPassword: state.confirmPassword, email: state.email, image: '', name: state.name, password: state.password));
    }
  }
  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is NameChanged) {
      final name = Name.dirty(event.name);
      yield state.copyWith(
        name: name.valid ? name : Name.pure(),
        status: Formz.validate([
          name,
          state.email,
          state.password,
          state.confirmPassword,
        ]), confirmPassword: state.confirmPassword, email: state.email, image: '', password: state.password,
      );
    } else if (event is EmailChanged) {
      final email = Email.dirty(event.email);
      yield state.copyWith(
        email: email.valid ? email : Email.pure(),
        status: Formz.validate([
          state.name,
          email,
          state.password,
          state.confirmPassword,
        ]), confirmPassword: state.confirmPassword,image: '', password: state.password, name: state.name,
      );
    } else if (event is PasswordChanged) {
      final password = Password.dirty(event.password);
      final confirm = ConfirmPassword.dirty(
          password: password.value,
          value: state.confirmPassword.value,
      );
      yield state.copyWith(
        password: password.valid ? password : Password.pure(),
        status: Formz.validate([
          state.name,
          state.email,
          password,
          confirm,
        ]), confirmPassword: state.confirmPassword, email: state.email, image: '', name: state.name
      );
    } else if (event is ConfirmPasswordChanged) {
      final password = ConfirmPassword.dirty(
          password: state.password.value,
          value: event.confirmPassword
      );
      print('confirm is valid ${password.valid}');
      yield state.copyWith(
        confirmPassword: password.valid ? password : ConfirmPassword.pure(),
        status: Formz.validate([
          state.name,
          state.email,
          state.password,
          password,
        ]), email: state.email, image: '', name: state.name, password: state.password,
      );
    } else if (event is ProfileImageChanged) {
      final String profileImage = event.image;
      yield state.copyWith(
        image: profileImage,
        status: Formz.validate([
          state.name,
          state.email,
          state.password,
          state.confirmPassword,
        ]), confirmPassword: state.confirmPassword, email: state.email, password: state.password, name: state.name
      );
    } else if (event is FormSubmitted) {
      if (!state.status.isValidated) return;
      yield state.copyWith(status: FormzStatus.submissionInProgress, confirmPassword: state.confirmPassword, email: state.email, image: '', password: state.password, name: state.name);
      try {
        await Future.delayed(Duration(seconds: 3));
        yield state.copyWith(status: FormzStatus.submissionSuccess, confirmPassword: state.confirmPassword, email: state.email, image: '', password: state.password, name: state.name);
      } on Exception {
        yield state.copyWith(status: FormzStatus.submissionFailure, confirmPassword: state.confirmPassword, email: state.email, image: '', password: state.password, name: state.name);
      }
    }
  }
}
