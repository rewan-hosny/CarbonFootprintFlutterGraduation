import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/staff_processing_file/staff_processing_file_screen.dart';
import 'package:graduation/screens/stuff_download/stuff_download_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../../constants.dart';

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

          SizedBox(height: SizeConfig.screenHeight*0.06,),
          Padding(
            padding: EdgeInsets.all(20),
            child: TopBar(
                text: "      Upload File",
                press: () {
                  //Navigator.pushNamed(context, HomeScreen.routeName); //edit screeeennnnnnnnn
                }
            ),
          ),

          SizedBox(height: SizeConfig.screenHeight*0.03,),
          Align(
            child: Image.asset(
              "assets/images/undraw_folder_files_re_2cbm 1.png",
              height: SizeConfig.screenHeight * 0.33,
            ),
            alignment: Alignment.topCenter,
          ),

          SizedBox(height: SizeConfig.screenHeight*0.14,),
          Container(
            height: 70,
            width: 360,
            child: ElevatedButton(
              onPressed: (

                  ) {
                Navigator.pushNamed(context, StaffProcessingFileScreen.routeName);
              }

   ,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: Image(
                        image: AssetImage("assets/images/Vector2.png"),),
                    ),
                    Text(
                      "Upload File",
                      style: TextStyle(fontSize: 22,fontFamily: "Poppins"),
                    ),
                  ]),
              style: ElevatedButton.styleFrom(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                padding: EdgeInsets.only(right: 40,left: 40),
                primary: Colors.white,
                backgroundColor: LightModeMainColor,
              ),
            ),
          ),


          SizedBox(height: SizeConfig.screenHeight*0.172,),


          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: (){Navigator.pushNamed(context, StuffDownloadScreen.routeName);},
                      child: Row(
                        children: [
                          Text("◄ ",
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
                          Text(" ►",
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
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     ElevatedButton(
          //         onPressed: (){
          //           //Navigator.pushNamed(context, HomeScreen.routeName);
          //         },
          //         child: Text(
          //           "Prev",
          //           style: TextStyle(fontSize: 23, color: LightModeMainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
          //         ),
          //         style: ElevatedButton.styleFrom(
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.only(
          //                   topRight: Radius.circular(20))),
          //           padding:
          //           EdgeInsets.symmetric(vertical: 20, horizontal: 44),
          //           primary: Colors.white,
          //           backgroundColor: prevButtonColor,
          //         )),
          //     ElevatedButton(
          //         onPressed: (){
          //           //Navigator.pushNamed(context, HomeScreen.routeName);
          //         },
          //         child: Text(
          //           "Next",
          //           style: TextStyle(fontSize: 23, color: Colors.white),
          //         ),
          //         style: ElevatedButton.styleFrom(
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(20))),
          //           padding:
          //           EdgeInsets.symmetric(vertical: 20, horizontal: 44),
          //           primary: Colors.white,
          //           backgroundColor: LightModeMainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
          //         )),
          //   ],
          // ),


        ],
      ),

    );
  }
}
