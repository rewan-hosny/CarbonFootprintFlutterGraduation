import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/staff_download_request_model.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';

import '../../../components/CustomDropdownButton2.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../StaffHello/StaffHello.dart';
import '../../staff_before_questions/staff_before_questions_screen.dart';
import '../../staff_chooseDU_page/staff_chooseDU_page.dart';
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
            SizedBox(height: SizeConfig.screenHeight*0.05,),
            Expanded(
              flex: 4,
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TopBar(
                        text: "    Download File",
                        press: () {
                          Navigator.pushNamed(context, StaffChoosePage.routeName);
                        }
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.04,),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text.rich(
                      TextSpan(
                        children: [

                          TextSpan(
                            text: 'please ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins3",
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              height: 1.25,
                            ),
                          ),
                          TextSpan(
                            text: 'select The range of Years: ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins3",
                              color: LightModeSmallTextColor,
                              fontWeight: FontWeight.w600,
                              height: 1.25,

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.1,),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth*0.1
                    ),
                    width: double.infinity,
                    height: SizeConfig.screenHeight*0.10,
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //From list
                          CustomDropdownButton2(
                            dropdownWidth: 100,
                            buttonHeight:50 ,
                            buttonWidth: 100,
                            buttonDecoration:BoxDecoration(
                              border: Border.all(color: Colors.black12,width: 2),
                              borderRadius: BorderRadius.circular(12),
                            ) ,
                            hint: 'from',
                            icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,size: 24,),
                            dropdownItems: itemsFrom,
                            value: SelectedItemFrom,
                            onChanged: (value) {
                              setState(() {
                                SelectedItemFrom = value;
                              });
                            },
                          ),
                          CustomDropdownButton2(
                            dropdownWidth: 100,
                            buttonHeight:50 ,
                            buttonWidth: 100,
                            buttonDecoration:BoxDecoration(
                              border: Border.all(color: Colors.black12,width: 2),
                              borderRadius: BorderRadius.circular(12),
                            ) ,
                            hint: 'To',
                            icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,size: 24,),
                            dropdownItems: itemsTo,
                            value: SelectedItemTo,
                            onChanged: (value) {
                              setState(() {
                                SelectedItemTo = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),



                  SizedBox(height: SizeConfig.screenHeight*0.10,),

                  Container(
                    height: 70,
                    width: 330,
                    child: ElevatedButton(
                      onPressed: () {
                        StaffDownloadRequestModel model = StaffDownloadRequestModel(
                          start: 2010,
                          end:2023 ,


                        );
                        print(SelectedItemFrom);
                        print(SelectedItemTo);
                        APIService.Download(SelectedItemFrom??"2010",SelectedItemTo??"2020");


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
                              "Download File",
                              style: TextStyle(fontSize: 22,fontFamily: "Poppins"),
                            ),
                          ]),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))),

                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
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
                                Navigator.pushNamed(context, StaffChoosePage.routeName);
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
                             Navigator.pushNamed(context, StaffUploadScreen.routeName);

                                // print("after you click on button in page one and my current data is : ");

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


