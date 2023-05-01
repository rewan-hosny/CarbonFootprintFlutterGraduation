import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/StaffHello/StaffHello.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';
import 'package:graduation/size_config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../services/api_service.dart';
import '../../staff_regression_page/staff_regression_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);


  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    APIService.uploadExcelFile(context).then((response) {
      if (response.message == "File uploaded successfully") {
        Map<String, dynamic> resultData =
        json.decode(json.encode(response.result?.toJson()));
        print(resultData);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StuffRegressionScreen(
                     dates: resultData,

                ))


        );
      } else {
        Navigator.pushNamed(context, StaffUploadScreen.routeName);
      }
    });
  }


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
                  Navigator.pushNamed(context, StaffUploadScreen.routeName); //edit screeeennnnnnnnn
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
                  child: FutureBuilder(
                    future: Future.delayed(Duration(seconds:10)),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return LinearPercentIndicator(
                          width: 345,
                          lineHeight: 20,
                          percent: 1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: LightModeMainColor,
                          backgroundColor: LightModeLightGreenColor,
                          animation: true,
                          animationDuration: 19000,
                          barRadius: Radius.elliptical(15, 15),
                        );
                      } else {
                        return Container();
                      }
                    },
                  )






      ,
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("uploading...",style: TextStyle(
                  fontSize: 25,
                  color: LightModeLightGreenColor,
                ),),

              ],
            ),

          ),

          SizedBox(height: SizeConfig.screenHeight*0.05,),





          ],
      ),
    );
  }
}
