import 'package:e_commerce/Constant.dart';
import 'package:flutter/material.dart';

import '../../SizeCnfig.dart';
import 'OTP_Form.dart';


class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override

  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
            horizontal: getProporitionateScreenWidth(24)),
        child: SingleChildScrollView(
       
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(
                    fontSize: getProporitionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("we sent you code to +90099...."),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" this code expired in "),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 40.0, end: 0),
                    duration: Duration(seconds: 40),
                    builder: (context, value, child) => Text(
                      "${value.ceil()}",
                      style: TextStyle(color: KPrimaryColor),
                    ),
                    onEnd: () {},
                  )
                ],
              ),
                SizedBox(
                height: SizeConfig.screenHight * 0.15,
              ),
           OTP_Form(), 
              SizedBox(
                height: SizeConfig.screenHight * 0.1,
              ),
              TextButton(
                style: ButtonStyle(overlayColor:MaterialStateProperty.all(Colors.transparent) ),
                child: Text(
                  "Resend OPT code",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: KSecondryColor),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: SizeConfig.screenHight * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
