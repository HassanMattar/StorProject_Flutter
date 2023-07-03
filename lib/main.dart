import 'package:e_commerce/Constant.dart';
import 'package:e_commerce/Screen/ForgotPassword/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home/home.dart';
import 'Screen/CompleteSignUp/CompleteSignUp.dart';
import 'Screen/LoginSuccess/LoginSuccess.dart';
import 'Screen/OTP/OtpScreen.dart';
import 'Screen/SignUp/SignUp.dart';
import 'Screen/Sign_In/Sign_In.dart';
import 'Screen/plash/SPlashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme(),
      routes: {
       "SplashScreen":(context) => SplashScreen(),
       "SignIn":(context) => SignIn(),
        "PasswordForgot":(context) => ForgotPassword(),
        "SignUp":(context) => SignUp(),
        "LoginSuccess":(context) => LoginSuccess(),
        "CompleteSignUp":(context) => CompleteSignUp(),
        "OtpScreen":(context) => OtpScreen(),
        "Home":(context) => Home()
      },
      initialRoute:"Home" ,
      
      );
  }

  ThemeData Theme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme:InputsDecorationTheme(),
    fontFamily:"Muli" ,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
     titleTextStyle: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),
     centerTitle: true,
      color: Colors.white,
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.black)
       ),
    textTheme: TextTheme(
      bodyLarge:TextStyle(
        color: KPrimaryColor),
   bodyMedium:TextStyle(color: TextColor),
     )
    );
  }
   InputDecorationTheme InputsDecorationTheme() {
    return InputDecorationTheme(
                 floatingLabelStyle: TextStyle(color:KPrimaryColor ), 
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: (42), vertical:(20)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: TextColor,
                      ),
                      gapPadding: 10),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: TextColor,
                      ),
                      gapPadding: 10));
  }

}

