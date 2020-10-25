import 'package:ecommerce/components/custom_surfix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
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
              SignForm(),

            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
    key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
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





