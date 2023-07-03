import 'package:flutter/material.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';
import 'component.dart';

class OTP_Form extends StatefulWidget {
  @override
  State<OTP_Form> createState() => _OTP_FormState();
}

class _OTP_FormState extends State<OTP_Form> {
  @override
  late FocusNode focusNode1;

  late FocusNode focusNode2;

  late FocusNode focusNode3;

  late FocusNode focusNode4;
   void nextNode(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  void initState() {
    super.initState();
    focusNode1 = new FocusNode();
    focusNode2 = new FocusNode();
    focusNode3 = new FocusNode();
    focusNode4 = new FocusNode();
  }
   @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [ Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProporitionateScreenHight(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: getProporitionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: focusNode1,
                      autofocus: true,
                      onChanged: (value) => nextNode(value, focusNode2),
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      textAlign: TextAlign.center,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      cursorColor: KSecondryColor,
                      cursorWidth: 2,
                      decoration: InputOtpDecoration(),
                    ), ),
                  SizedBox(
                    width: getProporitionateScreenWidth(60),
                    child: TextFormField(
                      autofocus: true,
                      focusNode: focusNode2,
                      onChanged: (value) => nextNode(value, focusNode3),
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      textAlign: TextAlign.center,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      cursorColor: KSecondryColor,
                      cursorWidth: 2,
                      decoration: InputOtpDecoration(),
                    ),
                  ),
                  SizedBox(
                    width: getProporitionateScreenWidth(60),
                    child: TextFormField(
                      autofocus: true,
                      focusNode: focusNode3,
                      onChanged: (value) => nextNode(value, focusNode4),
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      textAlign: TextAlign.center,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      cursorColor: KSecondryColor,
                      cursorWidth: 2,
                      decoration: InputOtpDecoration(),
                    ),
                  ),
                  SizedBox(
                    width: getProporitionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: focusNode4,
                      onChanged: (value) => focusNode4.unfocus(),
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      textAlign: TextAlign.center,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      cursorColor: KSecondryColor,
                      cursorWidth: 2,
                      decoration: InputOtpDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHight * 0.15,
            ),
            DefultButton(text: "Continue", function: () {}),],
    );
  }
}
