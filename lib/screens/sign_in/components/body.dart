import 'dart:ui';


import 'package:ecommerce/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text("Welcome Back", style: TextStyle(
                color: Colors.black ,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold
              ),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SignForm(),
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset("assetName"),
              )

            ],
          ),
        ),
      ),
    );
  }
}





