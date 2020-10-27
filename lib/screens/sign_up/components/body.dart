import 'package:ecommerce/components/custom_surfix_icon.dart';
import 'package:ecommerce/constants.dart';
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
            SignUpForm()
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

  void addError({String error}) {
    if(!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }
  void removeError({String error}) {
    if(!errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          buildPassFormField(),
          buildPassFormField()
        ],
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
          obscureText: true,
          onChanged: (value) {
            if (value.isNotEmpty ){
               removeError(error: kPassNullError );
            }else if(value.length >= 8){
                removeError(error: kPassNullError);
              }
            return null;

          },
          validator: (value){
            if (value.isEmpty ){
              addError(error: kPassNullError );
              return "";
           }else if(value.length < 8){
             addError(error: kShortNullError);
              return "";
               }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Input your Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            ),
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            if (value.isNotEmpty){
              removeError(error: kEmailNullError);
              }else if(emailValidatorRegExp.hasMatch(value)){
                removeError(error: kEmailNullError);
             }
            return null;
          },
             validator: (value){
            if (value.isEmpty){
               addError(error: kEmailNullError);
            }else if(emailValidatorRegExp.hasMatch(value)){
              addError(error: kEmailNullError);
              return "";
            }
              return null;
          },
          decoration:
          InputDecoration(
            labelText: "Email",
            hintText: "Input your Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            ),
          ),
        );
  }
}
