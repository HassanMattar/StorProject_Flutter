
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../SizeCnfig.dart';

class ListIconForHome extends StatelessWidget {
  ListIconForHome({
    super.key,
    required this.assestIcon,
    required this.data,
  });
  String assestIcon;
  String data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProporitionateScreenWidth(55),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(getProporitionateScreenWidth(15)),
              child: SvgPicture.asset(assestIcon),
              decoration: BoxDecoration(
                  color: Color(0xffffecdf),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Text(
            data,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
