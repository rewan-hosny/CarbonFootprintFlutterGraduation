import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/services/api_service.dart';

import '../../../models/staff_set_target_request_model.dart';
import '../../../size_config.dart';
import '../../staff_regression_page/staff_regression_screen.dart';
import '../../staff_result_target/staff_result_target_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, dynamic> data= {};
  TextEditingController target = TextEditingController();
  TextEditingController year = TextEditingController();

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.03,),
              TopBar(text: "              Target",press: (){

                Navigator.pop(
                    context


                );
              },),
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              Align(
                child: Image.asset(
                  "assets/images/undraw_marketing_re_7f1g 1.png",
                  height: SizeConfig.screenHeight * .33,
                ),
                alignment: Alignment.topCenter,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Set a new terget",style: TextStyle(fontSize: 22,color: LightModeMainColor),)),

              SizedBox(
                height: SizeConfig.screenHeight * 0.03,),
            
              Column(
                children: [
                  Text("Year",style: TextStyle(fontSize: 20,color: LightModeSmallTextColor),),

                  SizedBox(height: SizeConfig.screenHeight*0.02,),
                  Container(
                    height: 60,
                    width: 360,
                    child: TextFormField(
                      controller: year,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "2022" ,
                          hintStyle: InputTextStyle,
                          labelStyle: InputTextStyle,
                          filled: true,
                          fillColor: LightModeLightGreenColor,
                          enabledBorder: OutlineInputBorder(borderSide:
                          BorderSide(color: LightModeLightGreenColor),
                              borderRadius: BorderRadius.circular(12))

                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: SizeConfig.screenHeight * 0.03,),
              Column(
                children: [
                  Text("Emmissions",style: TextStyle(fontSize: 20,color: LightModeSmallTextColor),),

                  SizedBox(height: SizeConfig.screenHeight*0.02,),
                  Container(
                    height: 60,
                    width: 360,
                    child: TextFormField(
                      controller: target,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "5000Kg" ,
                          hintStyle: InputTextStyle,
                          labelStyle: InputTextStyle,
                          filled: true,
                          fillColor: LightModeLightGreenColor,
                          enabledBorder: OutlineInputBorder(borderSide:
                          BorderSide(color: LightModeLightGreenColor),
                              borderRadius: BorderRadius.circular(12))

                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.04,),

              Container(
                height: 70,
                width: 360,
                child: ElevatedButton(
                  onPressed: () {
                    StaffSetTargetRequestModel model=StaffSetTargetRequestModel(
                        year:int.parse(year.text),
                      target: int.parse(target.text)

                    );



                    APIService.SetTarget(model).then((response) => {
                      if(response.status=="Success"){
                        print(response.status)
                      }});




                      APIService.StaffGetTarget().then(
                              (response) => {
                            if(response.status=="Success"){
                                data = {
                                  'target':response.target,
                                  'year':response.year,
                                  'Prediction Emission':response.predictionEmission

                                },

                            },

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StaffResultTargetScreen(data: data),
                                  ),
                                )


                              }



                      );











                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(fontSize: 22,fontFamily: "Poppins"),),
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
            ],
          ),
        ),
      ),
    );
  }
}
