

import 'package:e_commerce/Constant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../SizeCnfig.dart';
import 'components.dart';

class SplashScreen extends StatelessWidget {
  List<Map<String, String>> listItemData = [
    {
      "img": "assets/images/splash_1.png",
      "text": "Welcom to Toktok,lets Shope!",
    },
    {
      "img": "assets/images/splash_3.png",
      "text": "We Show The the esay way to shop. \njust stay at home with us"
    },
    {
      "img": "assets/images/splash_2.png",
      "text":
          "We Help Pepole conect with Store \n around United State Of America"
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    PageController pageControl = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
       
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  controller: pageControl,
                  physics: BouncingScrollPhysics(),
                  itemCount: listItemData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SplashItems(
                      img: listItemData[index]["img"],
                      text: listItemData[index]["text"])),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProporitionateScreenWidth(20)),
                  child: Container(
                      child: Column(
                    children: [
                      Spacer(),
                      SmoothPageIndicator(
                        controller: pageControl,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            dotColor: Colors.grey,
                            activeDotColor: KPrimaryColor,
                            spacing: 2,
                            dotHeight: 10,
                            dotWidth: 10,
                            expansionFactor: 3),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        width: double.infinity,
                        height: getProporitionateScreenHight(56),
                        child: DefultButton(
                          function: () {
                            Navigator.pushNamed(context, "SignIn");
                          },
                          text: 'Continue',
                        ),
                      ),
                      Spacer(),
                    ],
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
