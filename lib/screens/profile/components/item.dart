import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter/material.dart';


class Item extends StatelessWidget {
  const Item({
    Key? key,
    this.headLine,
    this.detail,
    this.image,
    this.press,
  }) : super(key: key);

  final String? headLine;
  final String? detail;
  final String? image;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
                  child: Container(
                    width: getProportionateScreenWidth(44),
                    height: getProportionateScreenHeight(44),
                    decoration: BoxDecoration(
                      color: LightModeLightGreenColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(image!),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: headLine! + "\n",
                        style: ProfileItemHeadline,
                        children: <InlineSpan>[
                          TextSpan(
                            text: detail!,
                            style: ProfileItemDetail,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(40),
              height: getProportionateScreenHeight(40),
              child: TextButton(
                onPressed: press as void Function()?,
                child: Padding(
                  padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: Image.asset(
                    "assets/images/Month Chevron.png",
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
