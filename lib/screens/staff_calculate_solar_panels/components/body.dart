import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/staff_projects/staff_projects_screen.dart';
import 'package:graduation/screens/staff_solar_panel_result/staff_solar_panel_result_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../models/solar_panel_request_model.dart';

class Body extends StatefulWidget {

  const Body({Key? key}) : super(key: key);


  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, dynamic> data= {};
  TextEditingController wattsInSinglePanel = TextEditingController();
  TextEditingController totalEnergyConsumption = TextEditingController();
  TextEditingController panelEfficiency = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              TopBar(text: "Calculate solar panels",
                press: (){Navigator.pushNamed(context, StaffProjectsScreen.routeName);},),

              SizedBox(height: SizeConfig.screenHeight*0.06,),

              Text("Total Energy Consumption",style: TextStyle(
                fontSize: 18, fontFamily: "Poppins", color: LightModeSmallTextColor
              ),),

              SizedBox(height: SizeConfig.screenHeight*0.03,),

              Container(
            decoration:BoxDecoration(
              color: LightModeLightGreenColor,
              borderRadius: BorderRadius.circular(12),),
            child:


            Container(
              height: 60,
              width: 360,
              child: TextFormField(
                controller: totalEnergyConsumption,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "   15000" ,
                    suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",),
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
          ),

              SizedBox(height: SizeConfig.screenHeight*0.07,),

              Align(
                alignment: Alignment.topLeft,
                child: Text("Panel Information :",style: TextStyle(
                  fontSize: 20, color: LightModeMainColor
                ),),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.05,),

              Text("Panel Efficiency",style: TextStyle(
                fontSize: 18, color: LightModeSmallTextColor
              ),),

              SizedBox(height: SizeConfig.screenHeight*0.02,),

              Container(
                decoration:BoxDecoration(
                  color: LightModeLightGreenColor,
                  borderRadius: BorderRadius.circular(12),),
                child:
                // Container(
                //   width: 360,
                //   height: 65,
                //   color: LightModeLightGreenColor,
                //   child: Container(
                //     width: 300,
                //     height: 65,
                //     child: TextField(
                //       style: TextStyle(
                //         fontSize: 20 ,color: LightModeSmallTextColor
                //       ),
                //       textAlign: TextAlign.center,
                //       decoration: InputDecoration(
                //         hintText: '15000',
                //         // suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: LightModeLightGreenColor),
                //               borderRadius: BorderRadius.circular(12),),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //     width: 30,
                //     height: 30,
                //     child: Image(image: AssetImage("assets/images/Vector.png"))),
                Container(
                  height: 60,
                  width: 360,
                  child: TextFormField(

                    controller:panelEfficiency ,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "   300 wt" ,
                        suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/computersvg.svg",),
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
              ),


              SizedBox(height: SizeConfig.screenHeight*0.04,),

              Text("Watts/ Singlr panel",style: TextStyle(
                  fontSize: 18, color: LightModeSmallTextColor
              ),),

              SizedBox(height: SizeConfig.screenHeight*0.02,),

              Container(
                decoration:BoxDecoration(
                  color: LightModeLightGreenColor,
                  borderRadius: BorderRadius.circular(12),),
                child:
                // Container(
                //   width: 360,
                //   height: 65,
                //   color: LightModeLightGreenColor,
                //   child: Container(
                //     width: 300,
                //     height: 65,
                //     child: TextField(
                //       style: TextStyle(
                //         fontSize: 20 ,color: LightModeSmallTextColor
                //       ),
                //       textAlign: TextAlign.center,
                //       decoration: InputDecoration(
                //         hintText: '15000',
                //         // suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: LightModeLightGreenColor),
                //               borderRadius: BorderRadius.circular(12),),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //     width: 30,
                //     height: 30,
                //     child: Image(image: AssetImage("assets/images/Vector.png"))),
                Container(
                  height: 60,
                  width: 360,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: wattsInSinglePanel,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "   50 Wt" ,
                        hintStyle: InputTextStyle,
                        labelStyle: InputTextStyle,
                        filled: true,
                        fillColor: LightModeLightGreenColor,
                        enabledBorder: OutlineInputBorder(borderSide:
                        BorderSide(color: LightModeLightGreenColor),
                            borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
              ),


              SizedBox(height: SizeConfig.screenHeight*0.08,),

              Container(
                height: 70,
                width: 360,
                child: ElevatedButton(
                  onPressed: () {
                    print(int.parse(wattsInSinglePanel.text));
                    print(int.parse(totalEnergyConsumption.text));


                    SolarPanelRequestModel model = SolarPanelRequestModel(
                      wattsInSinglePanel:int.parse(wattsInSinglePanel.text),

                      totalEnergyConsumption:int.parse(totalEnergyConsumption.text),
                      panelEfficiency:double.parse(panelEfficiency.text)
                        );
    APIService.SolarPanel(model).then((response) => {
    if (response != null)
    {print(response.numSolarPanels),
      print(response.installationCost),
      data = {
          'numSolarPanels': response.numSolarPanels,
          'installationCost': response.installationCost,
          'totalCost': response.totalCost,
        }},


                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StaffSolarPanelsResultScreen(data: data),
                      ),
                    )


                    });},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
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
          ],
          ),
        ),
      ),
    );
  }
}
