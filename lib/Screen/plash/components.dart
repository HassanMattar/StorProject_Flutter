import 'package:flutter/material.dart';

import '../../Constant.dart';
import '../../SizeCnfig.dart';

ElevatedButton DefultButton(
    {
      required String text,
      required VoidCallback function
    }
  ) {
    return ElevatedButton(
                        style:  ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                        backgroundColor:KPrimaryColor
                           ),
                        onPressed:function,
                        child: Text(text,style: TextStyle(fontSize:getProporitionateScreenWidth(18),),),
                      );
  }

class SplashItems extends StatelessWidget {
  const SplashItems({
    super.key,
    required this.img,
    required this.text,
  });
  final String? img;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProporitionateScreenWidth(36),
              color: KPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text!),
        Spacer(),
        Image.asset(
          img!,
          height: getProporitionateScreenHight(265),
          width: getProporitionateScreenWidth(235),
        )
      ],
    );
  }
}
