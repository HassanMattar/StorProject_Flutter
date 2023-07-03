import 'package:e_commerce/SizeCnfig.dart';
import 'package:flutter/material.dart';

import 'Component.dart';
import 'SignUpForm.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProporitionateScreenWidth(20)),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Register Account",
                  style: TextStyle(
                      fontSize: getProporitionateScreenWidth(28),
                      color: Colors.black),
                ),
                SizedBox(
                  height: getProporitionateScreenHight(20),
                ),
                Text(
                  "Complite your details or continue \n with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProporitionateScreenHight(25),
                ),
                SignUpForm(),
                SizedBox(
                  height: SizeConfig.screenHight * 0.08,
                ),
                IconForConnection(),
                SizedBox(
                  height: getProporitionateScreenHight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
