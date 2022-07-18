// ignore_for_file: unnecessary_const, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:match_making_app/src/features/auth/domain/auth_models/email.dart';
import 'package:formz/formz.dart';
import 'package:match_making_app/src/features/auth/domain/auth_models/password.dart';
import 'package:match_making_app/src/features/auth/presentation/pages/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sign_up_bloc.dart';
import '../../application/sign_up_cubit.dart';
import '../../data/repositories/UserRepository.dart';
import '../sign_up_event.dart';

class SignUpPage extends StatefulWidget {

  const SignUpPage({Key? key,}) : super(key: key);

  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpPage> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  get email => null;

  get password => null;

  get status => null;
  @override
 Widget build(BuildContext context) {
 
    return RepositoryProvider.value(
      value: null,
      child: BlocProvider(
        create: (_) => SignUpBloc(),
        child: null,
      ),
    );
  }
}
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Sign Up')),
  //     body: Padding(
  //       padding: const EdgeInsets.all(12),
  //       child: BlocProvider(
  //         create: (context) {
  //           return SignUpBloc(
  //             _userRepository:
  //                 RepositoryProvider.of<UserRepository>(context),
  //           );
  //         },
  //         child: LoginForm(),
  //       ),
  //     ),
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //       child: Container(
  //     padding: EdgeInsets.only(top: 30.0),
  //     child: Column(
  //       children: <Widget>[
  //         Stack(
  //           alignment: Alignment.topCenter,
  //           overflow: Overflow.visible,
  //           children: <Widget>[
  //             Card(
  //               elevation: 2.0,
  //               color: Colors.white,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(8.0)),
  //               child: Container(
  //                 width: 360.00,
  //                 height: 480.00,
  //                 child: Column(
  //                   children: <Widget>[
  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                           top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
  //                       child: TextField(
  //                         focusNode: focusName,
  //                         controller: nameController,
  //                         keyboardType: TextInputType.emailAddress,
  //                         style: const TextStyle(
  //                             fontFamily: "SignikaSemiBold",
  //                             fontSize: 16.0,
  //                             color: Colors.black),
  //                         decoration: const InputDecoration(
  //                             border: InputBorder.none,
  //                             // icon: Icon(
  //                             //   FontAwesomeIcons.envelope,
  //                             //   color: Colors.black,
  //                             //   size: 22.0,
  //                             // ),
  //                             hintText: "Enter name",
  //                             hintStyle: TextStyle(
  //                                 fontFamily: "SignikaSemiBold",
  //                                 fontSize: 18.0)),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 250.0,
  //                       height: 1.0,
  //                       color: Colors.grey,
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                           top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
  //                       child: TextField(
  //                         focusNode: focusEmail,
  //                         controller: emailController,
  //                         keyboardType: TextInputType.emailAddress,
  //                         style: const TextStyle(
  //                             fontFamily: "SignikaSemiBold",
  //                             fontSize: 16.0,
  //                             color: Colors.black),
  //                         decoration: const InputDecoration(
  //                             border: InputBorder.none,
  //                             // icon: Icon(
  //                             //   FontAwesomeIcons.envelope,
  //                             //   color: Colors.black,
  //                             //   size: 22.0,
  //                             // ),
  //                             hintText: "Enter email",
  //                             hintStyle: TextStyle(
  //                                 fontFamily: "SignikaSemiBold",
  //                                 fontSize: 18.0)),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 250.0,
  //                       height: 1.0,
  //                       color: Colors.grey,
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                           top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
  //                       child: TextField(
  //                         focusNode: focusPassword,
  //                         controller: passwordController,
  //                         style: const TextStyle(
  //                             fontFamily: "SignikaSemiBold",
  //                             fontSize: 16.0,
  //                             color: Colors.black),
  //                         decoration: const InputDecoration(
  //                             border: InputBorder.none,
  //                             // icon: Icon(
  //                             //   FontAwesomeIcons.lock,
  //                             //   color: Colors.black,
  //                             //   size: 22.0,
  //                             // ),
  //                             hintText: "Enter password",
  //                             hintStyle: TextStyle(
  //                                 fontFamily: "SignikaSemiBold",
  //                                 fontSize: 18.0)),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 250.0,
  //                       height: 1.0,
  //                       color: Colors.grey,
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                           top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
  //                       child: TextField(
  //                         focusNode: focusPassword,
  //                         controller: passwordController,
  //                         style: const TextStyle(
  //                             fontFamily: "SignikaSemiBold",
  //                             fontSize: 16.0,
  //                             color: Colors.black),
  //                         decoration: const InputDecoration(
  //                             border: InputBorder.none,
  //                             // icon: Icon(
  //                             //   FontAwesomeIcons.lock,
  //                             //   color: Colors.black,
  //                             //   size: 22.0,
  //                             // ),
  //                             hintText: "Confirm password",
  //                             hintStyle: TextStyle(
  //                                 fontFamily: "SignikaSemiBold",
  //                                 fontSize: 18.0)),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 250.0,
  //                       height: 1.0,
  //                       color: Colors.grey,
  //                     ),
  //                     Container(
  //                       margin: const EdgeInsets.only(top: 40.0),
  //                       decoration: const BoxDecoration(
  //                           borderRadius:
  //                               BorderRadius.all(Radius.circular(5.0)),
  //                           boxShadow: <BoxShadow>[
  //                             BoxShadow(
  //                                 color: AppColours.colorStart,
  //                                 offset: Offset(1.0, 6.0),
  //                                 blurRadius: 20.0),
  //                             BoxShadow(
  //                                 color: AppColours.colorEnd,
  //                                 offset: Offset(1.0, 6.0),
  //                                 blurRadius: 20.0),
  //                           ],
  //                           gradient: LinearGradient(
  //                               colors: [
  //                                 AppColours.colorEnd,
  //                                 AppColours.colorStart
  //                               ],
  //                               begin: FractionalOffset(0.2, 0.2),
  //                               end: FractionalOffset(1.0, 1.0),
  //                               stops: [0.1, 1.0],
  //                               tileMode: TileMode.clamp)),
  //                     child: _SignupButton())
  //                     //   child: MaterialButton(
  //                     //     highlightColor: Colors.transparent,
  //                     //     splashColor: AppColours.colorEnd,
  //                     //     child: const Padding(
  //                     //       padding: EdgeInsets.symmetric(
  //                     //           vertical: 10.0, horizontal: 42.0),
  //                     //       child: Text(
  //                     //         "Sign Up",
  //                     //         style: TextStyle(
  //                     //             fontFamily: "SignikaSemiBold",
  //                     //             color: Colors.white,
  //                     //             fontSize: 22.0),
  //                     //       ),
  //                     //     ),
  //                     //     onPressed: () {
                            
  //                     //     },
  //                     //   ),
  //                     // )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(top: 10.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: <Widget>[
  //               Container(
  //                 decoration: const BoxDecoration(
  //                   gradient: LinearGradient(
  //                       colors: [
  //                         Colors.white10,
  //                         Colors.white,
  //                       ],
  //                       begin: FractionalOffset(0.0, 0.0),
  //                       end: FractionalOffset(1.0, 1.0),
  //                       stops: [0.0, 1.0],
  //                       tileMode: TileMode.clamp),
  //                 ),
  //                 width: 100.0,
  //                 height: 1.0,
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(left: 15.0, right: 15.0),
  //                 child: Text(
  //                   "OR",
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       decoration: TextDecoration.none,
  //                       fontSize: 16.0,
  //                       fontFamily: "WorkSansMedium"),
  //                 ),
  //               ),
  //               Container(
  //                 decoration: const BoxDecoration(
  //                   gradient: LinearGradient(
  //                       colors: [
  //                         Colors.white,
  //                         Colors.white10,
  //                       ],
  //                       begin: FractionalOffset(0.0, 0.0),
  //                       end: FractionalOffset(1.0, 1.0),
  //                       stops: [0.0, 1.0],
  //                       tileMode: TileMode.clamp),
  //                 ),
  //                 width: 100.0,
  //                 height: 1.0,
  //               ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(top: 10.0),
  //           child: FlatButton(
  //             child: const Text(
  //               "Sign up with",
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 18.0,
  //                   fontFamily: "SignikaRegular"),
  //             ),
  //             onPressed: () {},
  //           ),
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Padding(
  //               padding: EdgeInsets.only(top: 10.0, right: 40.0),
  //               child: GestureDetector(
  //                 onTap: () => {},
  //                 child: Container(
  //                   padding: const EdgeInsets.all(15.0),
  //                   decoration: const BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.white,
  //                   ),
  //                   child: const Icon(
  //                     FontAwesomeIcons.facebookF,
  //                     color: const Color(0xFF0084ff),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(top: 10.0, right: 40.0),
  //               child: GestureDetector(
  //                 onTap: () => {},
  //                 child: Container(
  //                   padding: const EdgeInsets.all(15.0),
  //                   decoration: const BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.white,
  //                   ),
  //                   child: const Icon(
  //                     FontAwesomeIcons.instagram,
  //                     color: const Color(0xFF0084ff),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.only(top: 10.0, right: 40.0),
  //               child: GestureDetector(
  //                 onTap: () => {},
  //                 child: Container(
  //                   padding: const EdgeInsets.all(15.0),
  //                   decoration: const BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.white,
  //                   ),
  //                   child: const Icon(
  //                     FontAwesomeIcons.github,
  //                     color: const Color(0xFF0084ff),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(top: 10.0),
  //               child: GestureDetector(
  //                 onTap: () => {},
  //                 child: Container(
  //                   padding: const EdgeInsets.all(15.0),
  //                   decoration: const BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.white,
  //                   ),
  //                   child: const Icon(
  //                     FontAwesomeIcons.google,
  //                     color: const Color(0xFF0084ff),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   ));
  // }

  // SignUpState copyWith({Email? email, required FormzStatus status, Password? password}) {
  //   throw UnimplementedError();
  // }

// class _SignupButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SignUpBloc, SignUpState>(
//       buildWhen: (previous, current) => previous.status != current.status,
//       builder: (context, state) {
//         return state.status.isSubmissionInProgress
//             ? const CircularProgressIndicator()
//             : ElevatedButton(
//                 key: const Key('loginForm_continue_raisedButton'),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   primary: const Color(0xFFFFD600),
//                 ),
//                  onPressed: state.status.isValidated
//                     ? () {
//                         context.read<SignUpBloc>().add(const SignUpWithEmail());
//                       }
//                     : null, child: null,
//                 // onPressed: state.status.isValidated
//                 //     ? () => context.read<SignUpCubit>().SignUpWithEmail()
//                 //     : null,
//                 // child: const Text('LOGIN'),
//               );
//       },
//     );
//   }
// }