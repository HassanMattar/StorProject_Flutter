
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
