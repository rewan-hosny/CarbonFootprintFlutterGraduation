import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/models/staff_Smart_Light_request_model.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../staff_smart_lighting_result/staff_smart_lighting_result.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, dynamic> data= {};
  TextEditingController total_consumption = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightModeLightGreenColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,),
                      onPressed: (){},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.04,),

                  Text("Calculate Smart Lighting", style: LightModeHeadersStyle,),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Align(
                child: Image.asset(
                  "assets/images/lamp 1.png",
                  height: SizeConfig.screenHeight *0.33,
                ),
                alignment: Alignment.topCenter,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08,),

              Text("Total Energy Consumption",style: TextStyle(
                  fontSize: 18, fontFamily: "Poppins", color: LightModeSmallTextColor),),

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
                    controller: total_consumption,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "   15000" ,
                        suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",),
                        hintStyle: InputTextStyle,
                        labelStyle: InputTextStyle,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(borderSide:
                        BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12))
                    ),
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.06,),


              Container(
                height: 70,
                width: 360,
                child: ElevatedButton(
                  onPressed: () {
                    print(int.parse(total_consumption.text));
                    // print(int.parse(totalEnergyConsumption.text));
                    //
                    //
                    StaffSmartLightRequestModel model = StaffSmartLightRequestModel(
                        totalConsumption:int.parse(total_consumption.text)

                    );
                    APIService.StaffSmartLight(model).then((response) => {
                      if (response != null)
                        {print(response.reducedFootprint),

                          data = {
                            'reducedFootprint': response.reducedFootprint,
                         }},


                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StaffSmartLightingResultScreen(data: data),
                        ),
                      )
                    });
            },
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
