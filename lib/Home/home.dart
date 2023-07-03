import 'package:e_commerce/SizeCnfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Components.dart';
import 'IconWedgit.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    Color colorAfterOnTap = Colors.black38;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: getProporitionateScreenHight(20),
            ),
            Header(),
            SizedBox(
              height: getProporitionateScreenHight(30),
            ),
            DiscountContiner(),
            SizedBox(
              height: getProporitionateScreenHight(30),
            ),
            Catigory()
          ],
        ),
      ),
    );
  }

}
