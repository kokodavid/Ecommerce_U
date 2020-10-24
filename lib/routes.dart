import 'package:ecommerce/screens/Splash/splash_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};