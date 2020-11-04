import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "OTP Verificatin",
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text("We Sent your code to 0769042076"),
            buildTimer(),
            OtpForm()
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            "This Code will expire in ",
            textAlign: TextAlign.center,
          ),
          TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0),
              duration: Duration(seconds: 30),
              builder: (context, value, child) => Text(
                    "00:${value.toInt()}",
                    style: TextStyle(color: kPrimaryColor),
                  ),
            onEnd: () {},
          )
        ]);
  }
}
class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();

  }

  void nextField({String value, FocusNode focusNode}) {
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value,focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin2FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin3FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value,focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin4FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {

                },
              ),
            )
          ],
        ),
    );
  }
}
