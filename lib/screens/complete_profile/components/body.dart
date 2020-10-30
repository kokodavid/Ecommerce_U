import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
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

            CompleteProfileForm()
          ],
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(

    );
  }
}

