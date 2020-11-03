import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          Row(children: [
            Text("This Code will expire in",
            textAlign: TextAlign.center,
            ),

            TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0),
                duration: Duration(seconds: 30),
                builder: (context, value, child) => Text("00:${value.toInt()}", style: TextStyle(
                  color: kPrimaryColor
                ),))
          ])
        ],
      ),
    );
  }
}
