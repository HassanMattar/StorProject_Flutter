import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';
import 'Component.dart';

class ForgotForm extends StatefulWidget {
  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  var formKey = GlobalKey<FormState>();
  List<String> error = [];
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [

          EmailTextFormfield(
              hintText: "Enter Your Email",
              lable: "Email",
              suffixIconPath: "assets/icons/Mail.svg"),
          SizedBox(
              height:SizeConfig.screenHight*0.08,
            ),
        
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
              })
        ],
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

  TextFormField EmailTextFormfield(
      {required String lable,
      required String hintText,
      required String suffixIconPath}) {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(emptyEmailError)) {
          setState(() {
            error.remove(emptyEmailError);
          });
        } else if (EmailValidator.validate(value) &&
            error.contains(invalidPassword)) {
          error.remove(invalidPassword);
          setState(() {});
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(emptyEmailError)) {
          setState(() {
            error.add(emptyEmailError);
          });
        } else if (!EmailValidator.validate(value) &&
            !error.contains(invalidPassword)) {
          error.add(invalidPassword);
          setState(() {});
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hintText,
        suffixIcon: CustomSvgIcon(path: suffixIconPath),
      ),
    );
  }
}
