import 'package:ecommerce/screens/Otp_Verification/components/Body.dart';
import 'package:ecommerce/size_config.dart';
import'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
  static String routeName = '/otpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "OTP Verification",

        ),
      ),
      body: Body(),
    );
  }
}

