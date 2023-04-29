import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../size_config.dart';
class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(40),
            height: getProportionateScreenHeight(40),
            child: TextButton(
              style: TextButton.styleFrom(
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                primary: Colors.white,
                backgroundColor: LightModeMainColor,
              ),
              onPressed: press as void Function()?,
              child: Image.asset("assets/icons/mdi_arrow-back.png"
                  ,height: SizeConfig.screenHeight*0.06),
            ),
          ),
          // Expanded(child: SizedBox.shrink()
          // ,flex:1
          // ),

        SizedBox(width: SizeConfig.screenWidth*0.1,),

          Text(""+text!, style: LightModeHeadersStyle,)

        ],
      ),

    );
  }
}
