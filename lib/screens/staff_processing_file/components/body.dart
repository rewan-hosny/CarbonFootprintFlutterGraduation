import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/size_config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: SizeConfig.screenHeight*0.03,),
          Padding(
            padding: EdgeInsets.only(top: 20,right: 20,left: 20),
            child: TopBar(
                text: "",
                press: () {
                  //Navigator.pushNamed(context, HomeScreen.routeName); //edit screeeennnnnnnnn
                }
            ),
          ),


          Align(
            child: Image.asset(
              "assets/images/s7.png",
              height: SizeConfig.screenHeight * 0.3,
            ),
            alignment: Alignment.topCenter,
          ),

          // SizedBox(height: SizeConfig.screenHeight*0.1,),
          Center(
            child: Text("File Uploaded Successfully !",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: LightModeSmallTextColor,
            ),),
          ),

          SizedBox(height: SizeConfig.screenHeight*0.07,),

          Padding(
            padding: EdgeInsets.all(20),
            child:Column(
              children: [
                // RichText(
                //   text: TextSpan(
                //     style: LightModeSmallTextStyle,
                //     children: <TextSpan>[
                //       TextSpan(text: ' Please, ', style: TextStyle(fontSize: 20,color: LightModeMainColor,fontWeight: FontWeight.bold)),
                //       TextSpan(text: 'wait a few minutes for ',
                //           style: TextStyle(fontSize: 20,color: LightModeSmallTextColor,
                //               fontWeight: FontWeight.bold,),),
                //     ],
                //   ),
                // ),

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Text("Please, ",style: TextStyle(fontSize: 21,color: LightModeMainColor),),
                            Text(" wait a few minutes for",
                              style: TextStyle(fontSize: 20,color: LightModeSmallTextColor),),],),
                      ),

                      Text(" processing file",style: TextStyle(fontSize: 20,color: LightModeSmallTextColor),),
                    ],
                  ),
                ),

            SizedBox(height: SizeConfig.screenHeight*0.04,),

            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 8),
            //   width: 340,
            //   height: 18,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.all(Radius.circular(15)),
            //     child: LinearProgressIndicator(
            //       value: 0.7,
            //       valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1CA953)),
            //       backgroundColor: LightModeLightGreenColor,
            //     ),
            //   ),)

                Padding(
                  padding: const EdgeInsets.all(13),
                  child: LinearPercentIndicator(
                    width: 345,
                    lineHeight: 20,
                    percent: .76,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: LightModeMainColor,
                    backgroundColor: LightModeLightGreenColor,
                    animation: true,
                    animationDuration: 5000,
                    barRadius: Radius.elliptical(15, 15),

                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("76% completed",style: TextStyle(
                  fontSize: 25,
                  color: LightModeLightGreenColor,
                ),),

              ],
            ),

          ),

          SizedBox(height: SizeConfig.screenHeight*0.05,),





          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: (){/*Navigator.pushNamed(context, HomeScreen.routeName);*/},
                      child: Row(
                        children: [
                          Text("◄",
                            style: TextStyle(fontSize: 22, color: LightModeMainColor,fontWeight: FontWeight.bold),),
                          Text(" Prev",
                            style: TextStyle(fontSize: 23, color: LightModeMainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                          ),

                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                        padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                        primary: Colors.white,
                        backgroundColor: prevButtonColor,
                      )),


                  ElevatedButton(
                      onPressed: (){/*Navigator.pushNamed(context, HomeScreen.routeName);*/},
                      child: Row(
                        children: [
                          Text("Next ",
                            style: TextStyle(fontSize: 23, color: Colors.white),),
                          Text("►",
                            style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                      )),
                ],
              ),
            ],
          ),],
      ),
    );
  }
}
