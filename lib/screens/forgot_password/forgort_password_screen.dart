import 'package:ecommerce/screens/forgot_password/body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static  String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
