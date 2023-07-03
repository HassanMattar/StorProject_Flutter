import 'package:flutter/material.dart';
import '../../Constant.dart';
import '../../SizeCnfig.dart';
import 'Component.dart';
import 'SignInForm.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProporitionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProporitionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    "Sign in with your email and password\n or continue with social media"),
                SizedBox(
                  height: SizeConfig.screenHight * 0.08,
                ),
                SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHight * 0.08,
                ),
                IconForConnection(),
                SizedBox(
                  height: getProporitionateScreenHight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style:
                          TextStyle(fontSize: getProporitionateScreenWidth(16)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
