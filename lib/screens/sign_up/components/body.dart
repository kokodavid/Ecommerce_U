import 'package:ecommerce/components/social_card.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
                "Register Account",
              style: headingStyle
              ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08,),
            SignUpForm(),
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
            )
          ],
        ),
      ),
    );
  }
}


