import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../models/prediction_request_model.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../articles/article_screen.dart';
import '../../before_regression/before_regression_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../staff_target/staff_target_screen.dart';
import '../user_regression.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required  this.dates}) : super(key: key);
 final Map<String,dynamic> dates;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<List<String>> myListt =  [];
  List<_ChartData> myList_data =  [];






  late TooltipBehavior _tooltip;

  @override
  void setState(VoidCallback fn) {

  }
  @override

  void initState() {
    super.initState();
    myListt = widget.dates.entries
        .map((entry) => [
      entry.key,
      '${double.parse(entry.value).toStringAsFixed(2)} Kg'])
        .toList();
    print("i am here ");



//

    for (int i = 0; i < myListt.length; i++) {
      double val = double.parse(myListt[i][1].replaceAll(' Kg', ''));
      myList_data.add(_ChartData(myListt[i][0], val));

    }
    print(myList_data);

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
          elevation: 0,
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
                  style: TextStyle(fontSize: 9,),),
              ),
            ],
          ),
          onPressed: () {

            Navigator.pushNamed(context, HomePageScreen.routeName);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: true,
        flag2: false,
        flag3: false,
        flag4: false,
      ),





      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    child:
                    TextButton(
                      style: TextButton.styleFrom(
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
                      onPressed: (){Navigator.pushNamed(context, BeforeRegressionScreen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.06,),
                  Container(
                    child: Text("Regression Statistics",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: LightModeSmallTextColor
                      ),),),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),

              Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/analysis.png"),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.02,),
                  Text("Yearly ",
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: "Poppins",
                        color: LightModeMainColor
                    ),),
                  Text("Emmissions:",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: "Poppins",),),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 300,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum:20000, interval: 1000),
                    tooltipBehavior: _tooltip,
                    series: <ChartSeries<_ChartData, String>>[
                      ColumnSeries<_ChartData, String>(
                        dataSource: myList_data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'state',
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF85C59D),
                              Color(0xFF9EEABA),
                            ]
                        ),
                      )
                    ]
                ),
              )
              ,

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 350,
                child: Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,

                      style: BorderStyle.solid,
                    ),
                  ),
                  children: [
                    buildRow(['Year','Emissions'],isHeader: true),
                    for (int i = 0; i < myListt.length; i++)
                      buildRow(myListt[i]),
                  ],
                ),
              ),




              SizedBox(height: SizeConfig.screenHeight*0.18,),




            ],
          ),
        ),
      ),
    );
  }
  TableRow buildRow(List<String> cells, {bool isHeader=false}) => TableRow(
      children: cells.map((cell){
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader? 16 : 14,
          color: isHeader ? LightModeSmallTextColor : LightModeMainColor,);
        return Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(cell,style:style ,),
          ),
        );
      }).toList()
  );





}



class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}