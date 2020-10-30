import 'package:ecommerce/components/custom_surfix_icon.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

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
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}){
    if(!errors.contains(errors))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildFnameFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            buildLastNameFormField()
          ],
        ),
      ),


    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
            onSaved:  (newValue) => lastName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty){
                removeError(error: kEmailNullError);
              }else if(emailValidatorRegExp.hasMatch(value)){
                removeError(error: kInvalidEmailError);
              }
              return null;
            },
            validator: (value){
              if (value.isEmpty){
                addError(error: kEmailNullError);
              }else if(!emailValidatorRegExp.hasMatch(value)){
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration:
            InputDecoration(
              labelText: "Last Name",
              hintText: "Input your Last Name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          );
  }

  TextFormField buildFnameFormField() {
    return TextFormField(
            onSaved:  (newValue) => firstName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty){
                removeError(error: kEmailNullError);
              }else if(emailValidatorRegExp.hasMatch(value)){
                removeError(error: kInvalidEmailError);
              }
              return null;
            },
            validator: (value){
              if (value.isEmpty){
                addError(error: kEmailNullError);
              }else if(!emailValidatorRegExp.hasMatch(value)){
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration:
            InputDecoration(
              labelText: "First name",
              hintText: "Input your First Name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          );
  }
}

