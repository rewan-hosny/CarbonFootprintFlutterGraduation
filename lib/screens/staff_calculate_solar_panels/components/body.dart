import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/staff_electricity_project/staff_electricity_screen.dart';
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
  Map<String, dynamic> data = {};
  TextEditingController wattsInSinglePanel = TextEditingController();
  TextEditingController totalEnergyConsumption = TextEditingController();
  TextEditingController panelEfficiency = TextEditingController();

  void submitForm() {
    final int watts = int.tryParse(wattsInSinglePanel.text) ?? 0;
    final int consumption = int.tryParse(totalEnergyConsumption.text) ?? 0;
    final double efficiency = double.tryParse(panelEfficiency.text) ?? 0.0;

    if (watts > 0 && consumption > 0 && efficiency > 0.0) {
      SolarPanelRequestModel model = SolarPanelRequestModel(
        wattsInSinglePanel: watts,
        totalEnergyConsumption: consumption,
        panelEfficiency: efficiency,
      );

      APIService.SolarPanel(model).then((response) {
        if (response != null) {
          setState(() {
            data = {
              'numSolarPanels': response.numSolarPanels,
              'installationCost': response.installationCost,
              'totalCost': response.totalCost,
            };
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StaffSolarPanelsResultScreen(data: data),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                TopBar(
                  text: "   solar panels",
                  press: () {
                    Navigator.pushNamed(context, StaffElectricityScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "Total Energy Consumption",
                  style: TextStyle(fontSize: 18, fontFamily: "Poppins", color: LightModeSmallTextColor),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                // Container(
                //   decoration: BoxDecoration(
                //     color: LightModeLightGreenColor,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Container(
                //     height: 60,
                //     width: 360,
                //     child: TextFormField(
                //       controller: totalEnergyConsumption,
                //       keyboardType: TextInputType.number,
                //       textAlign: TextAlign.center,
                //       decoration: InputDecoration(
                //         hintText: "   15000",
                //         suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/vector3.svg"),
                //         hintStyle: TextStyle(
                //           color: Colors.grey.shade300,
                //           fontSize: 14,
                //         ),
                //         labelStyle: InputTextStyle,
                //         filled: true,
                //         fillColor: LightModeLightGreenColor,
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: LightModeLightGreenColor),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                buildEnergyConsumptionFormField(),



                SizedBox(height: SizeConfig.screenHeight * 0.06),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Panel Information :",
                    style: TextStyle(fontSize: 20, color: LightModeMainColor),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Panel Efficiency",
                  style: TextStyle(fontSize: 18, color: LightModeSmallTextColor),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                // Container(
                //   decoration: BoxDecoration(
                //     color: LightModeLightGreenColor,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Container(
                //     height: 60,
                //     width: 360,
                //     child: TextFormField(
                //       controller: panelEfficiency,
                //       keyboardType: TextInputType.numberWithOptions(decimal: true),
                //       textAlign: TextAlign.center,
                //       decoration: InputDecoration(
                //         hintText: "   0.2 wt",
                //         suffixIcon: CustomSuffixIcon(svgIcon: "assets/images/computersvg.svg"),
                //         hintStyle: TextStyle(
                //           color: Colors.grey.shade300,
                //           fontSize: 14,
                //         ),
                //         labelStyle: InputTextStyle,
                //         filled: true,
                //         fillColor: LightModeLightGreenColor,
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: LightModeLightGreenColor),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                buildPanelEffiencyFormField(),



                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Watts/ Single panel",
                  style: TextStyle(fontSize: 18, color: LightModeSmallTextColor),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                // Container(
                //   decoration: BoxDecoration(
                //     color: LightModeLightGreenColor,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Container(
                //     height: 60,
                //     width: 360,
                //     child: TextFormField(
                //       keyboardType: TextInputType.number,
                //       controller: wattsInSinglePanel,
                //       textAlign: TextAlign.center,
                //       decoration: InputDecoration(
                //         hintText: "   50 Wt",
                //         hintStyle: TextStyle(
                //           color: Colors.grey.shade300,
                //           fontSize: 14,
                //         ),
                //         labelStyle: InputTextStyle,
                //         filled: true,
                //         fillColor: LightModeLightGreenColor,
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: LightModeLightGreenColor),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                buildSignalPanelFormField(),

                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Container(
                  height: 70,
                  width: 360,
                  child: ElevatedButton(
                    onPressed: submitForm,
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
                      padding: EdgeInsets.only(right: 40, left: 40),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildEnergyConsumptionFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 58,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: totalEnergyConsumption,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '15000',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),
        ));
  }

  Padding buildPanelEffiencyFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 58,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: panelEfficiency,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              textAlign: TextAlign.center,

              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '0.2 wt',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/images/computersvg.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),
        ));
  }

  Padding buildSignalPanelFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 58,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: wattsInSinglePanel,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,

              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '50 wt',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/images/vector3.svg",)

                // suffixIcon:
                  //
                  // CustomSuffixIcon(svgIcon: "assets/images/computersvg.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),
        ));
  }

}
