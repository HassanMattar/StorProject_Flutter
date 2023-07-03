import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';
import '../SizeCnfig.dart';
import 'IconWedgit.dart';
 List<Map> iconData = [
      {"icon":"assets/icons/Flash Icon.svg","Text":"Flash Deal"},
        {"icon":"assets/icons/Bill Icon.svg","Text":"Bill"},
          {"icon":"assets/icons/Game Icon.svg","Text":"Game"},
            {"icon":"assets/icons/Gift Icon.svg","Text":"Daily Gift"},
             {"icon":"assets/icons/Discover.svg","Text":"More"}
    ];
InkWell IconWithContiner({required int numItem, required String iconPath}) {
  return InkWell(
    borderRadius: BorderRadius.circular(getProporitionateScreenHight(40)),
    onTap: () {},
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.all(getProporitionateScreenHight(12)),
          width: getProporitionateScreenWidth(46),
          height: getProporitionateScreenHight(46),
          child: SvgPicture.asset(iconPath),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: KSecondryColor.withOpacity(.1),
          ),
        ),
    if(numItem !=0)    Positioned(
          right: 0,
          child: Container(
            width: getProporitionateScreenHight(14),
            height: getProporitionateScreenWidth(14),
            child: Center(
              child: Text(
                "$numItem",
                style: TextStyle(
                    fontSize: getProporitionateScreenWidth(10),
                    height: 1,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff4848),
            ),
          ),
        )
      ],
    ),
  );
}
  GestureDetector Catigory() {
    return GestureDetector(
      onTap: (){
        //Switch Catigory 
      },
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProporitionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              iconData.length,
              (index) => ListIconForHome(
                  assestIcon: iconData[index]["icon"],
                  data: iconData[index]["Text"]),
            )
          ],
        ),
      ),
    );
  }
Padding Header() {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.screenWidth * 0.6,
                  height: 50,
                  decoration: BoxDecoration(
                    color: KSecondryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    cursorColor: KPrimaryColor,
                    
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                        hintText: "Search product",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: getProporitionateScreenWidth(20),
                            vertical: getProporitionateScreenHight(9))),
                  ),
                ),
                  IconWithContiner(iconPath: "assets/icons/Cart Icon.svg",numItem: 0),
                IconWithContiner(iconPath: "assets/icons/Bell.svg",numItem: 3)
              ],
            ),
          );
  }
 Container DiscountContiner() {
    return Container(
            width: double.infinity,
            height: getProporitionateScreenHight(90),
            margin: EdgeInsets.symmetric(
                horizontal: getProporitionateScreenWidth(20)),
            padding: EdgeInsets.symmetric(
                horizontal: getProporitionateScreenHight(20),
                vertical: getProporitionateScreenHight(15)),
            decoration: BoxDecoration(
              color: Color(0xFF4A3298),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text.rich(
              TextSpan(
                  text: "A Summer Surprise \n",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: ("cashback 20%"),
                        style: TextStyle(fontSize: 24)),
                  ]),
            ),
          );
  }
