
import 'package:flutter/material.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';
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
 InputDecoration InputOtpDecoration() {
    return InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: getProporitionateScreenWidth(12)),
                focusedBorder:    OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: KSecondryColor)
            ) ,
                 enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: KSecondryColor)
            ) 
               );
  }