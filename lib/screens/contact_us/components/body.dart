import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/socal_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../articles/article_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import '../../regression1_page/regression1_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,
          elevation: 0,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 5),
                child: Image.asset("assets/images/Icon.png",
                  width: 25,
                  height: 25,),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Home",
                  style: TextStyle(fontSize: 9,),),
              ),
            ],
          ),
          onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: true,


      ),



      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.06,),
            Row(
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
                    onPressed: (){Navigator.pushNamed(context, HomePageScreen.routeName);},
                    child: Image.asset("assets/icons/mdi_arrow-back.png"
                        ,height: SizeConfig.screenHeight*0.06),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.2,),

                Text("Get Help!",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: LightModeSmallTextColor
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight*0.04,),
            Container(
              height: 260,
              child: Image.asset("assets/images/contact.jpeg"),
            ),

            SizedBox(height: SizeConfig.screenHeight*0.02,),
            Text(" We are here to help so please get in touch with us",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 19,
                color: LightModeSmallTextColor,
              ),
              textAlign: TextAlign.center,),

            SizedBox(height: SizeConfig.screenHeight*0.08,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(61),
                    width: getProportionateScreenWidth(61),
                    child: SvgPicture.asset("assets/icons/icons8-instagram.svg"),
                  ),
                ),

                SizedBox(width: SizeConfig.screenWidth*0.05,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    child: SvgPicture.asset("assets/icons/entypo-social_twitter-with-circle.svg"),
                  ),
                ),

                SizedBox(width: SizeConfig.screenWidth*0.05,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(53),
                    width: getProportionateScreenWidth(53),
                    child: SvgPicture.asset("assets/icons/logos_facebook.svg"),
                  ),
                ),
                // SocalCard(icon: "assets/icons/icons8-instagram.svg",press: (){},),
                // SocalCard(icon: "assets/icons/entypo-social_twitter-with-circle.svg",press: (){},),
                // SocalCard(icon: "assets/icons/logos_facebook.svg",press: (){},),
              ],
            )

          ],
        ),
      ),
    );
  }
}
