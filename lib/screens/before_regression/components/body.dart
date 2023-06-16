import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/leader_board/leader_board_screen.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../user_regression/user_regression.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isClicked1 =false;
  bool isClicked2 = false;
  Map<String, dynamic> resultData={};

  Color currenIconColor =Color(0xFF1CA953);
  @override
  void initState() {
    // TODO: implement initState
    isClicked1=false;
    isClicked2=false;
    setState(() {
      isClicked1=false;
      isClicked2=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          initState(); // Call initState when navigating back
          return true; // Allow navigating back
        },
    child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.05,),
            TopBar(text:  "       Regression",press: (){
              Navigator.pushNamed(context, HomePageScreen.routeName);

            },),
            SizedBox(height: SizeConfig.screenHeight*0.08,),

            Text("You now can make some challenges for your university based on :",style: TextStyle(
                fontSize: 18,color: LightModeSmallTextColor,fontFamily: "Poppins"
            ),),

            SizedBox(height: SizeConfig.screenHeight*0.08,),




            GestureDetector(
              onTap: (){

                setState(() {


                  APIService.UserRegressionReport().then((response) {

                    if (response.result != null) {
                     setState(() {
                       isClicked1=true;
                     });

                      print(response.result);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserRegressionScreen(
                              dates: resultData,

                            )),);

                      resultData = json.decode(json.encode(response.result?.toJson()));
                      print("${resultData} liuhguytr");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserRegressionScreen(
                              dates: resultData,

                            )),);
                    }
                    else{
                      setState(() {

                        Fluttertoast.showToast(msg: " prediction Not Calculate yet",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 4,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            fontSize: 15

                        );
                      });
                    }
                    print("${resultData} liuhguytr");});

                });


                },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: LightModeMainColor, width: 2),
                  color:  isClicked1?LightModeMainColor:Color(0xFFFFFFFF),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/s7.png",
                        width: 15,
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("Report Of Carbon Emissions",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: isClicked1?Color(0xFFFFFFFF):Colors.black,
                            ) ),
                      ),
                      Image.asset(
                        "assets/images/simple-icons_soundcharts.png",
                        width: 50,
                        height: 50,
                        color: isClicked1?Color(0xFFFFFFFF):currenIconColor ,
                      ),
                    ],
                  ),
                ),
              ),
            ),


            SizedBox(height: SizeConfig.screenHeight*0.05,),
            Text("OR",style: TextStyle(fontSize: 25,color: LightModeMainColor,fontFamily: "Poppins"),),


            SizedBox(height: SizeConfig.screenHeight*0.05,),



            GestureDetector(
              onTap: (){
                setState(() {
                  isClicked2=true;


                });
                Navigator.pushNamed(context, LeaderBoardScreen.routeName);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.11,
                decoration: BoxDecoration(
                  border: Border.all(color: LightModeMainColor, width: 2),
                  borderRadius: BorderRadius.circular(9),
                  color: isClicked2?LightModeMainColor:Color(0xFFFFFFFF),
                  // isClicked2?Color(0xFFFFFFFF):currenIconColor
                  //isClicked2?LightModeMainColor:Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/s7.png",
                        width: 15,
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("Track The Leaderboard",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: isClicked2?Color(0xFFFFFFFF):Colors.black,
                            ) ),
                      ),
                      Image.asset(
                        "assets/images/material-symbols_image-search-rounded.png",
                        width: 35,
                        color:isClicked2?Color(0xFFFFFFFF):currenIconColor ,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
