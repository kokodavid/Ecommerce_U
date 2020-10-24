import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Welcome Back", style: TextStyle(
              color: Colors.black ,
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold
            ),
            ),
            Text(
              "Sign in with youe email and password \nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SignForm(),

          ],
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(

          )
        ],
      ),
    );
  }
}

