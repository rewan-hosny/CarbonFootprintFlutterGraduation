import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          buildPage(
            context,
            "assets/images/pexels-rafael-valera-3679641.jpg",
            "Our future to choose",
            "Respond with positive, \npractical actions",
            0,
          ),
          buildPage(
            context,
            "assets/images/photo_2022-12-27_23-11-17.jpg",
            "Shift the culture",
            "Advocate for change by discovering satisfying ways to live",
            1,
          ),
          buildPage(
            context,
            "assets/images/photo_2022-12-27_23-11-16.jpg",
            "Restore a healthy Earth",
            "Join a global community\ncaring for our shared planet",
            2,
          ),
        ],
      ),
    );
  }

  Widget buildPage(
      BuildContext context,
      String backgroundImage,
      String title,
      String subtitle,
      int pageIndex,
      ) {
    if (pageIndex == 2) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: getProportionateScreenHeight(450)),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(28),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(2)),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(18),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(102)),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(450)),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(28),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenHeight(2)),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(18),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(102)),
              ],
            ),
          ],
        ),
      );
    }
  }
}
