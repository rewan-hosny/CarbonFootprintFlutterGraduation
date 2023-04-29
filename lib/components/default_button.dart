import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(329),
      height: getProportionateScreenHeight(52),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          primary: Colors.white,
          backgroundColor: LightModeMainColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: ButtonFontStyle,
        ),
      ),
    );
  }
}
