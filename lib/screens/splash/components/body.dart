//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/splash/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image:
                  AssetImage("assets/images/pexels-rafael-valera-3679641.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.6),
                Text(
                  "Our future to choose",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.004),
                Text(
                  "Respond with positive, \npractical actions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 20,
                      dotColor: Colors.white,
                      activeDotColor: LightModeMainColor,
                      dotHeight: 14,
                      dotWidth: 14,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.123),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => controller.jumpToPage(1),
                      child: Text(
                        "Next  ➞",
                        style: TextStyle(fontSize: 23),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15))),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 23),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/photo_2022-12-27_23-11-17.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.6),
                Text(
                  "Shift the culture",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.004),
                Text(
                  "Advocate for change by discovering satisfying ways to live",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 20,
                      dotColor: Colors.white,
                      activeDotColor: LightModeMainColor,
                      dotHeight: 14,
                      dotWidth: 14,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.128),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => controller.jumpToPage(2),
                      child: Text(
                        "Next  ➞",
                        style: TextStyle(fontSize: 23),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15))),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 23),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/photo_2022-12-27_23-11-16.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.6),
                Text(
                  "Restore a healthy Earth",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.004),
                Text(
                  "Join a global community\ncaring for our shared planet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 20,
                      dotColor: Colors.white,
                      activeDotColor: LightModeMainColor,
                      dotHeight: 14,
                      dotWidth: 14,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.131),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()
                            ));


                      },
                      //async {
                      //   final prefs = await SharedPreferences.getInstance();//عشان يسيف الهوم وميفتحش السبلاش كل مره *مش شغاله*
                      //   prefs.setBool("ShowHome", true);},

                      child: Text(
                        "Next  ➞",
                        style: TextStyle(fontSize: 23),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15))),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 23),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
