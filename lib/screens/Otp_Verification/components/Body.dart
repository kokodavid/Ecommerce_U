import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text("OTP Verification",
          style: TextStyle(
          fontSize: getProportionateScreenHeight(28),
            fontWeight: FontWeight.bold,
            color: Colors.black
    ),
          ),
          Text(
            "We Sent your code to 0769042076"
          )
        ],
      ),
    );
  }
}
