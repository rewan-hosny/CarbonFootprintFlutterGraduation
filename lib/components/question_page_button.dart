import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';

import '../size_config.dart';

class QuetionPageButton extends StatelessWidget {
  const QuetionPageButton({Key? key, this.text, this.press, this.selectedColor})
      : super(key: key);
  final String? text;
  final Function? press;
  final Color? selectedColor;
  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //     padding: EdgeInsets.symmetric(vertical: 20,horizontal: 23),
    //     style: ElevatedButton.styleFrom(
    //       shape:
    //       RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
    //       primary: Colors.white,
    //       backgroundColor: selectedColor,
    //     ),
    //     onPressed: press as void Function()?,
    //     child: Text(
    //       text!,
    //       style: ButtonFontStyle,
    //     ),
    //
    // );
    return ElevatedButton(
        onPressed: () => press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(fontSize: 23),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
          primary: Colors.white,
          backgroundColor: selectedColor,
        ));
  }
}
