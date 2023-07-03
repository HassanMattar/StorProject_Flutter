import 'package:e_commerce/SizeCnfig.dart';

import 'package:flutter/material.dart';

import '../../Constant.dart';

import 'ForgotForm.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forgot Password"),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProporitionateScreenWidth(20)),
            child: Column(children: [
              SizedBox(
                height: SizeConfig.screenHight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProporitionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
               SizedBox(
                height: getProporitionateScreenHight(18),
              ),
              Text(
                "please enter your email and we will send \n you a link to return your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProporitionateScreenHight(20),
              ),
              ForgotForm(),
              SizedBox(
                height:SizeConfig.screenHight*0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontSize: getProporitionateScreenWidth(16)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, "SignUp");
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: KPrimaryColor,
                          fontSize: getProporitionateScreenWidth(16)),
                    ),
                  )
                ],
              )
            ]),
          )),
        ));
  }
}
