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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Container(
                  width:getProportionateScreenWidth(300),
                  height: getProportionateScreenHeight(300),
                  child: Image.asset("assets/images/Questions_Intro.png")),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Container(
                    decoration: BoxDecoration(
                      color: LightModeLightGreenColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(160)),
                    ),
                    width: SizeConfig.screenWidth,
                    // height: getProportionateScreenHeight(390),
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: LightModeMainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.025),
                        Text("How Big Is Your Environmental Footprint?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF474747),
                              fontSize: 22,
                              fontFamily: "Poppins",
                            )),
                        SizedBox(height: SizeConfig.screenHeight * 0.015),
                        Text(
                          "Our planet is crisis, but with a few small changes. The first step is to understand your own impact by calculating your environmental footprint.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0xFF4D4B4B),
                              fontSize: 16,
                              fontFamily: "Poppins2"),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.035),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuestionOne()
                                ));


                          },
                          child: Align(
                            child: Text(
                              "Calculate Your Footprint",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(9))),
                            padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                            primary: Colors.white,
                            backgroundColor: LightModeMainColor,
                          ),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(30),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
