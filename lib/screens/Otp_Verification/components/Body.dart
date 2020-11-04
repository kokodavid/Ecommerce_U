import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "OTP Verification",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(28),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text("We Sent your code to 0769042076"),
                buildTimer(),
                SizedBox(height: SizeConfig.screenHeight * 0.15),
                OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                GestureDetector(
                  onTap: () {

                  },
                    child: Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ))
              ],
            ),
          ),
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
