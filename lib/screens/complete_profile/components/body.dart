import 'package:ecommerce/components/custom_surfix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'complete_profile_form.dart';

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
                Text("Complete Profile",
                  style: TextStyle(
                    fontSize:
                      getProportionateScreenHeight(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text("Complete your details or continue\nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenWidth(20),),
                Text(
                  "By continuing you confirm that you agree \nwith our Terms and Conditions",
                  textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}



