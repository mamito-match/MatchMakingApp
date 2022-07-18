// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:formz/formz.dart';

// import '../data/repositories/UserRepository.dart';
// import '../domain/auth_models/email.dart';
// import '../domain/auth_models/password.dart';
// import '../domain/entities/user-model.dart';
// import '../presentation/pages/sign_up_page.dart';

// class SignUpCubit extends Cubit<SignUpState> {
//   final UserRepository _userRepository;

//   SignUpCubit(this._userRepository) : super(SignUpState());
//   void emailChanged(String value) {
//     final email = Email.dirty(value);
//     emit(
//       state.copyWith(
//         email: email,
//         status: Formz.validate([email, state.password]),
//       ),
//     );
//   }

//   void passwordChanged(String value) {
//     final password = Password.dirty(value);
//     emit(
//       state.copyWith(
//         password: password,
//         status: Formz.validate([state.email, password]),
//       ),
//     );
//   }

//   Future<void> SignUpWithEmail() async {
//     User user = User(firstName: 'Netsanet', lastName: 'a', gender: 'a', employment: 'a', age: 6, about: 'a', address: 'a', education: 'a', religion: 'a');
//     if (!state.status.isValidated) return;
//     emit(state.copyWith(status: FormzStatus.submissionInProgress));
//     try {
//       _userRepository.registerUser(
//           user: user, email: state.email.value, password: state.password.value);
//       emit(state.copyWith(status: FormzStatus.submissionSuccess));
//       // ignore: nullable_type_in_catch_clause
//     } catch (_) {
//       emit(state.copyWith(status: FormzStatus.submissionFailure));
//     }
//   }
// }
