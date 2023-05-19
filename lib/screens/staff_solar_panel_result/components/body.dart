import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/staff_calculate_solar_panels/staff_calculate_solar_panels.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../models/Staff_progress_request_model.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool value = false;
  // Map<String,String> dates={};
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: LightModeSmallTextColor,
          elevation: 0,
          splashColor: LightModeMainColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 5),
                child: Image.asset("assets/images/Icon.png",
                  width: 25,
                  height: 25,),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Home",
                  style: TextStyle(fontSize: 9,),),),],),
          onPressed: () { Navigator.pushNamed(context, StuffHomePageScreen.routeName); },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomStaffNavigationBar(
        flag1: false,
        flag2: true,
        flag3: false,
        flag4: false,
      ),



      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              TopBar(text: "            Result",  press:(){Navigator.pushNamed(context, StaffCalculateSolarPanelsScreen.routeName);}),




              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" After your needs you should use : ",style: TextStyle(
                    fontSize: 20 ,color: LightModeSmallTextColor),),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.01,),
              Text("${widget.data["numSolarPanels"]} Panels",style: TextStyle(
                  fontSize: 23 ,color: LightModeMainColor),),



              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" And that will cost :",style: TextStyle(
                    fontSize: 20 ,color: LightModeSmallTextColor),),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.01,),
              Text("${widget.data["totalCost"]} \$ ",style: TextStyle(
                  fontSize: 24 ,color: LightModeMainColor,fontWeight: FontWeight.bold),),
              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Container(
                width: 250,

                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: LightModeMainColor, width: 2),
                ),


                child: Row(
                  children: [
                    SizedBox(width:SizeConfig.screenWidth*0.02,),
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        value: value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                            if(value == true){
                              StaffProgressResponseModel model = StaffProgressResponseModel(
                                progress: true,
                                add:false ,


                              );
                              APIService.StaffProgress(model);
                              
                              // dates["chosen year"]="2023";
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => StaffQuestionOne(
                              //             answersData: dates
                              //
                              //         ))
                              //
                              //
                              // );
                            }
                          });
                        },
                        activeColor: LightModeMainColor,
                        checkColor: Colors.white,
                        autofocus: true,
                      ),
                    ),

                    Text("put in progress",style: TextStyle(
                        fontFamily: "Poppins", fontSize: 20, color: LightModeMainColor
                    ),)




                  ],
                ), //edittttttttt
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Container(
                width: 370,
                height: 65,
                decoration: BoxDecoration(
                  color: LightModeLightGreenColor,
                  borderRadius: BorderRadius.all(Radius.circular(3)),

                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 20,color: LightModeSmallTextColor, fontWeight:FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(text: '   Some'),
                        TextSpan(text: ' advices ', style: LogInTextStyle),
                        TextSpan(text: 'may help you :'),
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/images/One.png"),),
                      Align(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(text: '  Look ', style: TextStyle(color: LightModeMainColor)),
                              TextSpan(text: ' for a reputable company for '),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft, child: Text("       installation and maintenance.",
                    style: TextStyle(fontSize: 16,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),),)
                ],
              ),



              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/images/Two.png"),),

                      Align(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(text: '  Educate ', style: TextStyle(color: LightModeMainColor)),
                              TextSpan(text: 'students and staff about the ',),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft, child: Text("        benefits of solar panels.",
                    style: TextStyle(fontSize: 17,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),),)
                ],
              ),



              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/images/Three.png"),),

                      Align(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(text: '  Ensure ', style: TextStyle(color: LightModeMainColor)),
                              TextSpan(text: 'proper maintenance of solar ',),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topLeft, child: Text("        panels to keep them functioning \n        efficiently.",
                    style: TextStyle(fontSize: 16,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),)),
                ],
              ),



              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/images/Four.png"),),

                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(text: '  Monitor ', style: TextStyle(color: LightModeMainColor,),),
                            TextSpan(text: 'your solar panel system'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topLeft, child: Text("        regularly.",
                    style: TextStyle(fontSize: 17,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
