import 'package:flutter/material.dart';

import '../../SizeCnfig.dart';
import 'CompleteSignUpForm.dart';

class CompleteSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Complete Profile",
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
              SizedBox(height: getProporitionateScreenHight(30),),
              CompleteSignUpForm(),
              SizedBox(height: getProporitionateScreenHight(30),),
              Text("By continuing you confirm that \n you agree with our term and condition",
              textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
