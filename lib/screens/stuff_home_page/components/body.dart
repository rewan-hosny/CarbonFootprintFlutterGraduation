import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/bottom_navigation_bar.dart';
import 'package:graduation/components/staff_bottom_navigation_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/staff_before_questions/staff_before_questions_screen.dart';
import 'package:graduation/screens/staff_projects/staff_projects_screen.dart';
import 'package:graduation/screens/stuff_home_page/stuff_home_page_screen.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../services/api_service.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<_ChartData> dataa=[];
  late List <_ChartData> data=[];
  Map<String,dynamic> dates={};
  List<List<String>> myListt =  [];
  late TooltipBehavior _tooltip;
  final List<Color> color = <Color>[];
  LinearGradient gradientColors = LinearGradient(
    colors: [Colors.blue, Colors.green],
  );

  @override
  void initState() {



    color.add(Colors.orange[50]!);
    color.add(Colors.orange[100]!);
    color.add(Colors.orange[200]!);
    color.add(Colors.orange);


  List<double> stops = <double>[];

    stops.add(0.0);
    stops.add(0.25);
    stops.add(0.5);
    stops.add(1.0);
    gradientColors = LinearGradient(colors: color, stops: stops);

    _tooltip = TooltipBehavior(enable: true);
    super.initState();

    APIService.StaffGetHomePage().then((response) {
      if (response.status =="Success") {
        print(response.year);
        if (response.year != null && response.year!.data != null) {
          List<_ChartData> chartData = response.year!.data!.entries.map((
              entry) {
            return _ChartData(int.parse(entry.key), entry.value.toDouble());

          }).toList();


          setState(() {
            dataa = chartData;


            gradientColors = LinearGradient(colors: color, stops: stops);
          });
        }
      }


    });

      // data = [
      //   _ChartData(2031, 1000),
      //   _ChartData(2028, 100),
      //   _ChartData(2029, 75),
      //   _ChartData(2030, 50),
      //
      // ];

      _tooltip = TooltipBehavior(enable: true);
      super.initState();
    }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LightModeLightGreenColor,

        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: LightModeMainColor,
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
            onPressed: () {Navigator.pushNamed(context, StuffHomePageScreen.routeName); },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomStaffNavigationBar(
          flag1: false,
          flag2: false,
          flag3: false,
          flag4: false,
        ),

        body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text("Welcome to you !",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: "Poppins2",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        padding: EdgeInsets.only(top: 60 ),
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                          color: Color(0xFF1CA953),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          padding: EdgeInsets.only(left: 15,top: 25),
                          margin: EdgeInsets.only(top: 110),
                          width: 370,
                          height: 265,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Try these steps next!",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          color: LightModeMainColor
                                      ),),],),

                                SizedBox(height: SizeConfig.screenHeight*0.03,),

                                GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, StaffBeforeQuestionsScreen.routeName);},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: Image(
                                              image: AssetImage("assets/images/carbon_text-link-analysis.png"),),
                                          ),
                                          SizedBox(width: SizeConfig.screenWidth*0.02,),
                                          Text("Calculate university emissions",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                  color: LightModeSmallTextColor
                                              )),                                      //linkkkkkkkkkkkkkkk
                                        ],),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 25,
                                        height: 25,
                                        child: Image(
                                          image: AssetImage("assets/images/material-symbols_check-circle.png"),),
                                      ),],
                                  ),
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.030,),

                                GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: Image(
                                              image: AssetImage("assets/images/fxemoji_clap.png"),),
                                          ),
                                          SizedBox(width: SizeConfig.screenWidth*0.02,),
                                          Text("Read articles you already do",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                  color: LightModeSmallTextColor
                                              )),                                  //linkkkkkkkkkkkkkkkkkkk
                                        ],),

                                      Container(
                                        margin: EdgeInsets.only(right: 11),
                                        width: 32,
                                        height: 32,
                                        child: Image(
                                          image: AssetImage("assets/images/ic_twotone-navigate-next.png"),),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.035,),

                                GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, StaffProjectsScreen.routeName);},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: Image(
                                              image: AssetImage("assets/images/material-symbols_image-search-rounded.png"),),
                                          ),
                                          SizedBox(width: SizeConfig.screenWidth*0.02,),
                                          Text("Projects to reduce Co2 footprint",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                  color: LightModeSmallTextColor
                                              )),                                   //linkkkkkkkkkkkkkkkkk
                                        ],),

                                      Container(
                                        margin: EdgeInsets.only(right: 11),
                                        width: 32,
                                        height: 32,
                                        child: Image(
                                          image: AssetImage("assets/images/ic_twotone-navigate-next.png"),),
                                      ),
                                    ],
                                  ),
                                ),
                              ]) ,

                        ),
                      ),


                    ]
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),

                Visibility(
                  visible: dataa.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          alignment: Alignment.topLeft,

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                             // width:220,
                             // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("2023",style:
                                    TextStyle(
                                      fontSize: getProportionateScreenWidth(26),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF1CA953),
                                    )

                                    ),
                                  ],
                                ),
                                SizedBox(height: SizeConfig.screenHeight*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Your Target",style:
                                  TextStyle(
                                    fontSize: getProportionateScreenWidth(16),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF363636),

                                  ),

                                  ),
                                ],
                              ),
                                SizedBox(height: SizeConfig.screenHeight*0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Total Emmisions",style:
                                    TextStyle(
                                      fontSize: getProportionateScreenWidth(16),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1CA953),

                                    ),

                                    ),
                                  ],
                                ),
                                SizedBox(height: SizeConfig.screenHeight*0.02,),

                              SfCartesianChart(
                                  // primaryXAxis: CategoryAxis(),
                                  // primaryYAxis: NumericAxis(minimum: 0, maximum: 25000, interval: 500),
                                 // tooltipBehavior: _tooltip,
                                  series: <ChartSeries<_ChartData, int>>[
                                    AreaSeries<_ChartData, int>(
                                        dataSource: dataa,
                                        xValueMapper: (_ChartData data, _) => data.x,
                                        yValueMapper: (_ChartData data, _) => data.y,
                                        name: 'Gold',
                                        gradient: gradientColors
                                        // LinearGradient(begin: Alignment.topLeft,end: Alignment.topRight,colors: [
                                        //   Color(0xFFFFC043),
                                        //   Color(0xFFF9E1AF
                                        //
                                        //
                                        //   ),
                                        // ])


                                    )
                                  ]
                              ),



                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                Padding(padding: EdgeInsets.all(24),
                child: Row(
                  children: [
                  SvgPicture.asset("assets/new/square_check_box.svg",),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(children: [
                        Text("Make",style: TextStyle(

                                fontSize: 15,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1CA953)

                        ),),
                        Text(" a progress with ",style: TextStyle(

                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF363636)

                        ),),
                        Text("Real ",style: TextStyle(

                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1CA953)

                        ),),
                        Text("projects",style: TextStyle(

                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF363636)

                        ),),



                      ],),
                    ),


                    
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:10.0),
                                  child: SvgPicture.asset("assets/new/vector_1.svg"),
                                ),
                              ],
                            ),
                            Container(

                              width: 270,
                              child: Column(

                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Plants Project",
                                        textAlign: TextAlign.left,
                                        style:   TextStyle(
                                          fontSize: getProportionateScreenWidth(18),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF474747),

                                        ),
                                      ),
                                    ],
                                  )
                                  ,
                                  SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Steps are big source of goals",
                                        textAlign: TextAlign.left,
                                        style:   TextStyle(
                                          fontSize: getProportionateScreenWidth(14),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF474747),

                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(

                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        width: 250,
                                        height: 6,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child:

                                          LinearProgressIndicator(
                                            value: 0.4,
                                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1CA953)),
                                            backgroundColor: Color(0xFFE1FBD6),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: SizeConfig.screenHeight*0.0015,),


                                ],
                              ),
                            )
                          ],),
                        )
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.02,),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:10.0),
                                    child: Container(
                                      width:60,
                                        height:58,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/new/img.png"),
                                              fit: BoxFit.cover),
                                        ),
                                        child:Center(child: SvgPicture.asset("assets/new/vector_2.svg"),)
                                    ),
                                  ),
                                ],
                              ),
                              Container(

                                width: 270,
                                child: Column(

                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Electricity Project",
                                          textAlign: TextAlign.left,
                                          style:   TextStyle(
                                            fontSize: getProportionateScreenWidth(18),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747),

                                          ),
                                        ),
                                      ],
                                    )
                                    ,
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Steps are big source of goals",
                                          textAlign: TextAlign.left,
                                          style:   TextStyle(
                                            fontSize: getProportionateScreenWidth(14),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747),

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(

                                          margin: EdgeInsets.symmetric(vertical: 10),
                                          width: 250,
                                          height: 6,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            child:

                                            LinearProgressIndicator(
                                              value: 0.5,
                                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF019FFB)),
                                              backgroundColor: Color(0xFFCDF8FE),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),


                                  ],
                                ),
                              )
                            ],),
                        )
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.02,),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:10.0),
                                    child: SvgPicture.asset("assets/new/vector_3.svg"),
                                  ),
                                ],
                              ),
                              Container(

                                width: 270,
                                child: Column(

                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Prediction Project",
                                          textAlign: TextAlign.left,
                                          style:   TextStyle(
                                            fontSize: getProportionateScreenWidth(18),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747),

                                          ),
                                        ),
                                      ],
                                    )
                                    ,
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Steps are big source of goals",
                                          textAlign: TextAlign.left,
                                          style:   TextStyle(
                                            fontSize: getProportionateScreenWidth(14),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747),

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(

                                          margin: EdgeInsets.symmetric(vertical: 10),
                                          width: 250,
                                          height: 6,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            child:

                                            LinearProgressIndicator(
                                              value: 0.2,
                                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF3A29)),
                                              backgroundColor: Color(0xFFFFE5D4),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizeConfig.screenHeight*0.0015,),


                                  ],
                                ),
                              )
                            ],),
                        )
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.04,),
                  ],),
                )

              ],
            )
        )
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final int x;
  final double y;
}


