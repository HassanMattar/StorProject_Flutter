import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Constant.dart';
import '../../SizeCnfig.dart';
import 'Component.dart';

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  var formKey = GlobalKey<FormState>();
  List<String> error = [];
  bool remember = false;
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
            height: getProporitionateScreenHight(20),
          ),
          PasswordTextFormfield(
              hintText: "Enter Your Password",
              lable: "Password",
              suffixIconPath: "assets/icons/Lock.svg"),
          SizedBox(
            height: getProporitionateScreenHight(20),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: ((value) {
                  setState(() {});
                  remember = value!;
                }),
                activeColor: KPrimaryColor,
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "PasswordForgot");
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                        decoration: TextDecoration.underline, color: TextColor),
                  )),
            ],
          ),
          SizedBox(
            height: getProporitionateScreenHight(20),
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
                    Navigator.popAndPushNamed(context, "LoginSuccess");
                }
                ;
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
 
 
 
  TextFormField PasswordTextFormfield(
      {required String lable,
      required String hintText,
      required String suffixIconPath}) {
    return TextFormField(
      //مشان يمسح الايرور الموجودة بالليستة اول مايحقق الشروط ومشان مايضل بالليستة
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(emptyPassWordError)) {
          setState(() {
            error.remove(emptyPassWordError);
          });
        } else if (value.length >= 8 && error.contains(shortPassword)) {
          setState(() {
            error.remove(shortPassword);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(emptyPassWordError)) {
          setState(() {
            error.add(emptyPassWordError);
          });
        } else if (value.length < 8 && !error.contains(shortPassword)) {
          setState(() {
            error.add(shortPassword);
          });
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hintText,
        //لتحجيم الايقونة
        suffixIcon: CustomSvgIcon(path: suffixIconPath),
      ),
    );
  }

 
 
}
