import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/Staff_Login2/Staff_Login2.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';

import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../StaffHello/StaffHello.dart';
import '../../staff_before_questions/staff_before_questions_screen.dart';
import '../../staff_step_to_do/staff_step_to_do.dart';
import '../../stuff_download/stuff_download_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String,String> dates={};
  List<String> itemsFrom =['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
  String? SelectedItemFrom ;

  List<String> itemsTo =['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
  String? SelectedItemTo ;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight*0.05,),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TopBar(
                        text: "      Steps To Do!",
                        press: () {
                          //Navigator.pushNamed(context, HomeScreen.routeName); //edit screeeennnnnnnnn
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: Image(
                            image: AssetImage("assets/images/warning-sign.jpg"),),
                        ),
                        SizedBox(width: SizeConfig.screenWidth*0.02,),
                        Text("Don't Skip The Video",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: LightModeSmallTextColor
                            )),
                      ],
                    ),
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.08,),
                  Container(
                    width: 350,
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Image.asset(
                      "assets/images/vid.png",
                      fit: BoxFit.cover,
                    ),
                  ),





                ],
              ),
            ),

            Expanded(
              flex:1,
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.end,
                children: [
                  Container(

                    //  color: Colors.lightBlue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(

                              onPressed: (){
                                Navigator.pushNamed(context, StaffLogin2.routeName);
                              },
                              child: Text(
                                "Prev",
                                style: TextStyle(fontSize: 23, color: LightModeMainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                              onPressed: ()
                              {

                                Navigator.pushNamed(context, StaffHello.routeName);

                              },
                              child: Text(
                                "Next",
                                style: TextStyle(fontSize: 23, color: Colors.white),
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
                      )),
                ],
              ),
            ),

            //   ],
            // )
          ],

        ),



      ),
    );
  }
}


