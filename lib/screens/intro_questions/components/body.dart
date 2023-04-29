import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Image.asset("assets/images/Questions_Intro.png"),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Container(
              decoration: BoxDecoration(
                color: LightModeLightGreenColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(160)),
              ),
              width: SizeConfig.screenWidth,
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.015,
                  ),
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                      color: LightModeMainColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text("How Big Is Your Environmental Footprint?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 22,
                        fontFamily: "Poppins",
                      )),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text(
                    "Our planet is crisis, but with a few small changes. The first step is to understand your own impact by calculating your environmental footprint.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xFF4D4B4B),
                        fontSize: 18,
                        fontFamily: "Poppins2"),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionOne()
                          ));


                    },
                    child: Text(
                      "Calculate Your Footprint",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.all(25),
            ),
          ],
        ),
      ),
    ));
  }
}
