import 'dart:ui';


import 'package:ecommerce/components/social_card.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
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
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",
                      style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                    ),
                    Text("Sign Up",
                      style: TextStyle(fontSize: getProportionateScreenWidth(16),
                        color: kPrimaryColor,
                        decoration: TextDecoration.underline
                      ),
                    )

                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}






