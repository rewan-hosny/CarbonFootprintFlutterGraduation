import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';

import '../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key, required this.icon, required this.press,
  }) : super(key: key);
  final String icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)

        ),
       // padding: EdgeInsets.all(getProportionateScreenWidth(1)),
        height: getProportionateScreenHeight(35),
        width: getProportionateScreenWidth(35),
        decoration: BoxDecoration(color: LightModeMainBackgroundColor
        //Color(0xFFF5F6F9)
            ,shape: BoxShape.circle
        ),
        child: SvgPicture.asset(icon!),

      ),
    );
  }
}
