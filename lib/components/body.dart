import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget> [
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Text("SMarket",style: TextStyle(fontSize: getProportionateScreenWidth(36),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("Welcome to SMarket ,Let's Shop!"),
                  Image.asset()
                ],
              ),
            ),
            Expanded(
              flex: 2,
                child: SizedBox())
          ],
        ),
      ),
    );
  }
}
