import 'package:e_commerce/SizeCnfig.dart';
import 'package:flutter/material.dart';

import 'component.dart';

class LoginSuccess extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(title: Text("Login Success")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.screenHight * 0.04,
            ),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHight * 0.4,
            ),
            SizedBox(
              height: SizeConfig.screenHight * 0.08,
            ),
            Text(
              "Login Success",
              style: TextStyle(
                  fontSize: getProporitionateScreenWidth(30),
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth*0.6,
              child: DefultButton(function: () {}, text: "Back To Home")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
