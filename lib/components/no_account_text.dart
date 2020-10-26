import 'package:ecommerce/screens/forgot_password/forgort_password_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account ?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
          child: Text("Sign Up",
            style: TextStyle(fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor,
                decoration: TextDecoration.underline
            ),
          ),
        )

      ],
    );
  }
}
