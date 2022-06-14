import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:match_making_app/src/features/auth/presentation/welcome.dart';
import './src/features/auth/presentation/Login.dart';
import './src/features/auth/presentation/SignUp.dart';
import './src/features/auth/presentation/animation/FadeAnimation.dart';

const String loginPage = 'login';
const String welcomePage = 'login';
const String signupPage = 'login';


Route<dynamic> controller(RouteSettings settings){
   switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case welcomePage:
        return MaterialPageRoute(builder: (context) => Welcome());
      case signupPage:
        return MaterialPageRoute(builder: (context) => SignupPage());
      default:
        throw ('this route name does not exist');
    }

}