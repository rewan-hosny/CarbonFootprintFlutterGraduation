import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/staff_download_request_model.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';

import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../StaffHello/StaffHello.dart';


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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          SizedBox(height: SizeConfig.screenHeight*0.06,),
          Padding(
            padding: EdgeInsets.all(20),
            child: TopBar(
                text: "     Steps To Do !",
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName); //edit screeeennnnnnnnn
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



          SizedBox(height: SizeConfig.screenHeight*0.03,),

          Container(
            padding: EdgeInsets.only(left: 60,right: 60),
            width: double.infinity,
            height: 100,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //From list
                Container(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: DropdownButton<String>(
                    iconSize: 27,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,),
                    isExpanded: true,
                    hint: Text("From", style: TextStyle(
                        fontSize: 15,
                        color: LightModeMainColor
                    ),),
                    value: SelectedItemFrom,
                    onChanged: (item)=> setState(() => SelectedItemFrom = item),
                    items: itemsFrom
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item,style: TextStyle(
                        fontSize: 16,
                        color: LightModeSmallTextColor,
                      ),),
                    ))
                        .toList(),
                  ),
                ),

                //TO list
                Container(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: DropdownButton<String>(
                    iconSize: 27,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    hint: Text("To",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: LightModeMainColor
                    ),),
                    icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,),
                    isExpanded: true,
                    value: SelectedItemTo,
                    onChanged: (item)=> setState(() => SelectedItemTo = item),
                    items: itemsTo
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item,style: TextStyle(
                        fontSize: 14,
                        color: LightModeSmallTextColor,
                      ),),
                    ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: SizeConfig.screenHeight*0.05,),

          Container(
            height: 60,
            width: 360,
            child: ElevatedButton(
              onPressed: () {
                StaffDownloadRequestModel model = StaffDownloadRequestModel(
                  start: 2010,
                  end:2023 ,


                );
            // APIService.Download();


    },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Image(
                      image: AssetImage("assets/images/material-symbols_cloud-download.png"),),
                  ),
                  Text(
                  "Download",
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

          SizedBox(height: SizeConfig.screenHeight*0.07,),



          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, StaffHello.routeName);
                      },
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
                      onPressed: (){Navigator.pushNamed(context, StaffUploadScreen.routeName);},
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
          // )
        ],
      ),

    );
  }
}


