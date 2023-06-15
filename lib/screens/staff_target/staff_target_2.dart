import 'package:flutter/material.dart';

import '../../components/top_bar.dart';
import '../../constants.dart';
import '../../models/staff_set_target_request_model.dart';
import '../../services/api_service.dart';
import '../../size_config.dart';
import '../staff_result_target/staff_result_target_screen.dart';
class staffTarget2 extends StatefulWidget {
  const staffTarget2({Key? key}) : super(key: key);

  @override
  State<staffTarget2> createState() => _staffTarget2State();
}

class _staffTarget2State extends State<staffTarget2> {
  Map<String, dynamic> data = {};
  TextEditingController yearController = TextEditingController();
  TextEditingController emissionsController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(
                text: "                Target",
                press: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.024,),
              Align(
                child: Image.asset(
                  "assets/images/undraw_marketing_re_7f1g 1.png",
                  height: SizeConfig.screenHeight * .33,
                ),
                alignment: Alignment.topCenter,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.024,),
          Column(
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Set a new target",
                    style: TextStyle(fontSize: 22, color: LightModeMainColor),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02,),
                Align(child:
                Text(
                  "Year",
                  style: TextStyle(fontSize: 20, color: LightModeSmallTextColor),
                ),
                  alignment: Alignment.center,),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                buildYearFormField(),


                SizedBox(height: SizeConfig.screenHeight * 0.04,),


                Align(child:
                Text(
                  "Emissions",
                  style: TextStyle(fontSize: 20, color: LightModeSmallTextColor),
                ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                buildEmissionsFormField(),
                SizedBox(height: SizeConfig.screenHeight*0.04,),






                Container(
                  height: 70,
                  width: 360,
                  child: ElevatedButton(
                    onPressed: () {
                      StaffSetTargetRequestModel model = StaffSetTargetRequestModel(
                        year: int.parse(yearController.text),
                        target: int.parse(emissionsController.text),
                      );

                      APIService.SetTarget(model).then((response) {
                        if (response.status == "Success") {
                          APIService.StaffGetTarget().then((response) {
                            if (response.status == "Success") {
                              data = {
                                'target': response.target,
                                'year': response.year,
                                'Prediction Emission': response.predictionEmission,
                              };
                              print(data);
                            }

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StaffResultTargetScreen(data: data),
                              ),
                            );
                          });
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(fontSize: 22, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      padding: EdgeInsets.only(right: 40, left: 40),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                  ),
                ),



                SizedBox(height: SizeConfig.screenHeight*0.02),





              ]
          )

            ],
          ),
        ),
      ),

    );
  }
  Padding buildYearFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: yearController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "2022",
                hintStyle: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  fontFamily: "Poppins2",
                  color: Color(0xFF474747),
                ),
                labelStyle: InputTextStyle,
                filled: true,
                fillColor: LightModeLightGreenColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: LightModeLightGreenColor),
                  borderRadius: BorderRadius.circular(12),
                ),




                //SvgPicture.asset("")

              ),

            ),
          ),
        ));
  }


  Padding buildEmissionsFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: emissionsController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "5000Kg",
                hintStyle: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  fontFamily: "Poppins2",
                  color: Color(0xFF474747),
                ),
                labelStyle: InputTextStyle,
                filled: true,
                fillColor: LightModeLightGreenColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: LightModeLightGreenColor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),


            ),
          ),


        ))



    ;



  }

}
