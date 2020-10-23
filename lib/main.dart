import 'package:ecommerce/routes.dart';
import 'package:ecommerce/screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),

        )
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

