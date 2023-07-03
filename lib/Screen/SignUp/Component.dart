
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';
Padding CustomSvgIcon({required String path}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(
      0,
      getProporitionateScreenWidth(20),
      getProporitionateScreenWidth(20),
      getProporitionateScreenWidth(20),
    ),
    child: SvgPicture.asset(path, height: getProporitionateScreenHight(18)),
  );
}


 Row IconForConnection() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconConnection("assets/icons/facebook-2.svg"),
                  SizedBox(
                    width: getProporitionateScreenWidth(20),
                  ),
                  IconConnection("assets/icons/twitter.svg"),
                  SizedBox(
                    width: getProporitionateScreenWidth(20),
                  ),
                  IconConnection("assets/icons/google-icon.svg")
                ],
              );
  }

  Widget IconConnection(String path) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 0,
      child: SvgPicture.asset(
        path,
      ),
      backgroundColor: Color(0xfff5f6f9),
    );
  }


Widget DefultButton(
      {required String text, required VoidCallback function}) {
    return Container(
       width: double.infinity,
                    height: getProporitionateScreenHight(56),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            backgroundColor: KPrimaryColor),
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProporitionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
