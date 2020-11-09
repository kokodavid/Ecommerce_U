import 'package:ecommerce/components/custom_surfix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/screens/forgot_password/forgort_password_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(children: [
            Checkbox(
              value: remember,
              activeColor: kPrimaryColor,
              onChanged: (value){
                setState(() {
                  remember = value;

                });
              },
            ),
            Text("Remember me"),
            Spacer(),
            GestureDetector(
              onTap:() =>  Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
              child: Text(
                "Forgot Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )

          ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),
          ),

          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                Navigator.pushNamed(context, Home.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });

        }
        return null;
      },
      validator: (value){
        if (value.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);

          });
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
        if (value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });

        }
        return null;
      },
      validator: (value){
        if (value.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);

          });
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

