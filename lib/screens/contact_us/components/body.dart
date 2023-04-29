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

      // floatingActionButton: SizedBox(
      //   width: 70,
      //   height: 70,
      //   child: FloatingActionButton(
      //     backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
      //     splashColor: LightModeMainColor,
      //     foregroundColor: Colors.white,
      //     elevation: 0,
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(top: 10,bottom: 5),
      //           child: Image.asset("assets/images/Icon.png",
      //             width: 25,
      //             height: 25,),
      //         ),
      //         Align(
      //           alignment: Alignment.center,
      //           child: Text("Home",
      //             style: TextStyle(fontSize: 9,),),),],),
      //     onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   notchMargin: 10,
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
      //               child: Image.asset("assets/images/icon-park-solid_analysis.png",
      //                 width: 25,
      //                 height: 25,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Regression",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
      //               child: Image.asset("assets/images/Vector.png",
      //                 width: 25,
      //                 height: 25,),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Plants",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
      //               child: Image.asset("assets/images/ooui_articles-ltr.png",
      //                 width: 25,
      //                 height: 25,
      //               ),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Articles",
      //               style: TextStyle(
      //                 color: LightModeSmallTextColor,
      //                 fontSize: 10,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){},
      //               child: Image.asset("assets/images/material-symbols_person.png",
      //                 width: 25,
      //                 height: 25,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Profile",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //     ],
      //   ),
      // ),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
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
          onPressed: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: false,


      ),



      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.05,),
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
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: LightModeSmallTextColor
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight*0.06,),
            Container(
              height: 280,
              child: Image.asset("assets/images/contact.jpeg"),
            ),

            SizedBox(height: SizeConfig.screenHeight*0.03,),
            Column(
              children: [
                Text(" We are here to help so please get",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 19,
                  color: LightModeSmallTextColor,
                ),),
                Text("in touch with us",
                  style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 19,
                  color: LightModeSmallTextColor,
                ),),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight*0.08,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(45),
                    child: Image.asset("assets/images/icons8-instagram-48.png"),
                  ),
                ),

                SizedBox(width: SizeConfig.screenWidth*0.08,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenWidth(40),
                    child: SvgPicture.asset("assets/icons/entypo-social_twitter-with-circle.svg"),
                  ),
                ),

                SizedBox(width: SizeConfig.screenWidth*0.08,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenWidth(40),
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
