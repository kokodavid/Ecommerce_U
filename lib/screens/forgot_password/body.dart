import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Forgot Password",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "Please enter your email and we will send\nyou a link to return to your account",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
