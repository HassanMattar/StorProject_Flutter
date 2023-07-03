
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';
import 'Component.dart';

class CompleteSignUpForm extends StatefulWidget {
  @override
  State<CompleteSignUpForm> createState() => _CompleteSignUpFormState();
}

class _CompleteSignUpFormState extends State<CompleteSignUpForm> {
  var formKey = GlobalKey<FormState>();
  String? firstName;
  String? location;
  
  String? phone;
  List<String> error = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProporitionateScreenHight(20)),
        child: Column(
          children: [
            SizedBox(
              height: getProporitionateScreenHight(20),
            ),
            NameTextFormfield(
                hintText: "Enter Your FirstName",
                lable: "FirstName",
                suffixIconPath: "assets/icons/User Icon.svg"),
            SizedBox(
              height: getProporitionateScreenHight(20),
            ),
            NameTextFormfield(
                hintText: "Enter Your LastName",
                lable: "LastName",
                suffixIconPath: "assets/icons/User Icon.svg"),
                 SizedBox(
              height: getProporitionateScreenHight(20),
            ),
          
            PhoneTextFormfield(
                hintText: "Enter your phone Number",
                lable: " phone number",
                suffixIconPath: "assets/icons/Phone.svg"),
               SizedBox(
              height: getProporitionateScreenHight(20),
            ),
          
            LocationTextFormfield(lable: "Location",hintText: "Enter your location",suffixIconPath: "assets/icons/Location point.svg"),
            genaritListOfError(),
            SizedBox(
              height: getProporitionateScreenHight(20),
            ),
            DefultButton(
                text: 'Continue',
                function: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    
                  }
                  ;
                })
          ],
        ),
      ),
    );
  }

  Widget genaritListOfError() {
    return Column(
        children: List.generate(
            error.length,
            (index) => Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Error.svg",
                          width: getProporitionateScreenWidth(18),
                          height: getProporitionateScreenHight(18),
                        ),
                        SizedBox(
                          width: getProporitionateScreenHight(10),
                        ),
                        Text(error[index])
                      ],
                    ),
                    SizedBox(
                      height: getProporitionateScreenHight(5),
                    )
                  ],
                )));
  }

  TextFormField NameTextFormfield(
      {required String lable,
      required String hintText,
      required String suffixIconPath}) {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(emptyFirstName)) {
          setState(() {
            error.remove(emptyFirstName);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(emptyFirstName)) {
          setState(() {
            error.add(emptyFirstName);
          });
        }
      },
      onSaved: (newValue) {
        firstName = newValue;
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hintText,
        suffixIcon: CustomSvgIcon(path: suffixIconPath),
      ),
    );
  }

  TextFormField PhoneTextFormfield(
      {required String lable,
      required String hintText,
      required String suffixIconPath}) {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(emptyPhoneNumber)) {
          setState(() {
            error.remove(emptyPhoneNumber);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(emptyPhoneNumber)) {
          setState(() {
            error.add(emptyPhoneNumber);
          });
        }
      },
      onSaved: (newValue) {
        phone = newValue;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hintText,
        suffixIcon: CustomSvgIcon(path: suffixIconPath),
      ),
    );
  }
  TextFormField LocationTextFormfield(
      {required String lable,
      required String hintText,
      required String suffixIconPath}) {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(emptyLocation)) {
          setState(() {
            error.remove(emptyLocation);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(emptyLocation)) {
          setState(() {
            error.add(emptyLocation);
          });
        }
      },
      onSaved: (newValue) {
        location = newValue;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hintText,
        suffixIcon: CustomSvgIcon(path: suffixIconPath),
      ),
    );
  }

}
