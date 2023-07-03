import 'package:flutter/material.dart';

const Color KPrimaryColor = Color(0XFFFF7643);
const Color KPrimaryLightColor = Color(0XFFFFECDF);
const LinearGradient KPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    colors: [Color(0XFFA53E), Color(0XFFFF7643)],
    end: Alignment.bottomLeft);
const Color KSecondryColor = Color(0xff979797);
const Color TextColor = Color(0xff757575);
const KAnimationDuration = Duration(milliseconds: 200);

String emptyPassWordError = "Pleass enter your password";
String emptyEmailError = "Pleass enter your Email";
String invalidPassword = "Invalid Email Adress";
String shortPassword = "Password must be at least 8";
String confirmPassword = "Confirm your password ";
String emptyFirstName = "p;ease enter your first Name";
String emptyPhoneNumber = "Please enter your phone number";
String emptyLocation = "Please enter yourLocation";

List<String> error = [];
