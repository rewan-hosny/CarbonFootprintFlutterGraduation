import 'package:flutter/material.dart';

import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<List<String>> myListt =  [];
  List<_ChartData> myList_data =  [];
 // late TooltipBehavior _tooltip;
  void initState() {
    super.initState();
    // myListt = widget.dates.entries
    //     .map((entry) => [
    //   entry.key,
    //   '${double.parse(entry.value).toStringAsFixed(2)} Kg'])
    //     .toList();
    // print("i am here ");
    //
    //
    //
    //
    //
    //
    // for (int i = 0; i < myListt.length; i++) {
    //   double val = double.parse(myListt[i][1].replaceAll(' Kg', ''));
    //   myList_data.add(_ChartData(myListt[i][0], val));
    //
    // }
    // print(myList_data);
    //


   // _tooltip = TooltipBehavior(enable: true);

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: Image.asset(
                  "assets/images/Icon.png",
                  width: 25,
                  height: 25,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context, StuffHomePageScreen.routeName);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomStaffNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              TopBar(
                  text: "        Leaderboard",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }),
              SizedBox(height: SizeConfig.screenHeight * 0.02),

              SizedBox(height: SizeConfig.screenHeight * 0.01),

              Stack(
                children: [
                  Container(

                    height: 275,

                    child: Column(
                      children: [
                        Expanded(
                          flex:3,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFE8F6EE),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(12)
                                )
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(

                    child:  Container(
                      // color: Colors.lightBlue,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
//                     Expanded(
//
//                       child: Column(
//                         children: [
//                           SvgPicture.asset("assets/new/vectorOfNumber2.svg"),
//                           SizedBox(height: SizeConfig.screenHeight * 0.01),
//                           Container(
//                               width: 90,height: 90,
//                               child: Image.asset("assets/new/Ellipse 646.png")
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
// flex: 3,
//                       child: Align(
//                         alignment: Alignment.topCenter,
//                         child:  Column(
//                           children: [
//                             SvgPicture.asset("assets/new/crown.svg"),
//                             SizedBox(height: SizeConfig.screenHeight * 0.01),
//                             Container(
//                                 width: 104,height: 104,
//
//                                 child: Image.asset("assets/new/Ellipse 645.png")),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//
//                       child:  Column(
//                         children: [
//                           SvgPicture.asset("assets/new/vectorOfNumber3.svg"),
//                           SizedBox(height: SizeConfig.screenHeight * 0.01),
//                           Container(
//
//                               width: 90,height: 90,
//                               child: Image.asset("assets/new/Ellipse 647.png")),
//                         ],
//                       ),
//                     ),



                          Container(
                            //  color: Colors.lightBlue,
                            height: 210,
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/new/vectorOfNumber2.svg"),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Container(
                                    width: 90,height: 90,
                                    child: Image.asset("assets/new/Ellipse 646.png")),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Text("Germany\nUniversity",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF474747)
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight * 0.005),
                                Text("60%",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF00D95F)
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            //  color: Colors.red,
                            height: 280,
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/new/crown.svg",width: 34,height: 27,),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Container(
                                    width: 108,height: 108,

                                    child: Image.asset("assets/new/Ellipse 645.png")),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Text("Suez\nUniversity",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF474747)
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight * 0.005),
                                Text("80%",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 19,

                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF00D95F)
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            //  color: Colors.black,
                            height: 210,
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/new/vectorOfNumber3.svg"),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Container(

                                    width: 90,height: 90,
                                    child: Image.asset("assets/new/Ellipse 647.png")),
                                SizedBox(height: SizeConfig.screenHeight * 0.01),
                                Text("Ain Shams\nUniversity",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF474747)
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight * 0.005),
                                Text("40%",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF00D95F)
                                  ),
                                ),

                              ],
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Stack(
                children: [
                  Container(
                    height: 430,
                    child: Column(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex:22,
                          child: Container(

                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFC8FFCB),
                                  Color(0xFFF5FDF8),
                                  Color(0xFFF5FDF8),

                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)
                              ),
                            ),
                            child:   Padding(
                              padding: const EdgeInsets.fromLTRB(1, 50, 1, 10),
                              child: SingleChildScrollView(
                                child: Container(


                                  child: Column(
                                    children: [
                                      Table(
                                        children: [
                                          buildHeaderRow(['#University','Emissions / Year','Target','Progress'],isHeader: true),
                                        ],
                                      ),
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: 20),
                                        child: Table(
                                          border: TableBorder(
                                            horizontalInside: BorderSide(
                                              color: Color(0xFF5F5959),
                                              width: 1,


                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          children: [

                                            buildRow(['Cairo','11258779 kg','112588 kg','30 %'],"assets/new/Polygon1.svg",Color(0xFFD82953),isHeader: false),
                                            buildRow(['Alex','11258779 kg','112588 kg','60 %'],"assets/new/Polygon2.svg",Color(0xFF00D95F),isHeader: false),
                                            buildRow(['Cairo','11258779 kg','112588 kg','20 %'],"assets/new/Polygon1.svg",Color(0xFFD82953),isHeader: false),
                                            buildRow(['Suez','11258779 kg','112588 kg','80 %'],"assets/new/Polygon2.svg",Color(0xFF00D95F),isHeader: false),
                                            buildRow(['GUC','11258779 kg','112588 kg','60 %'],"assets/new/Polygon2.svg",Color(0xFF00D95F),isHeader: false),
                                            buildRow(['Ain Shams','11258779 kg','112588 kg','40 %'],"assets/new/Polygon2.svg",Color(0xFF00D95F),isHeader: false),
                                          //  buildRow(['Cairo','11258779 kg','112588 kg','30 %'],"assets/new/Polygon1.svg",Color(0xFFD82953),isHeader: false),
                                            // for (int i = 0; i < myListt.length; i++)
                                            //   buildRow(myListt[i]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(200),
                          height: getProportionateScreenHeight(37),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF07401D),
                                  Color(0xFF096D30),
                                  Color(0xFF20C35F)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),

                              )

                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Track Dashboard",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )

              // Stack(
              //   children: [
              //     Container(
              //       width: 200,
              //       height: 200,
              //       color: Colors.red,
              //     ),
              //     Positioned(
              //       top: 50,
              //       left: 50,
              //       child: Container(
              //         width: 100,
              //         height: 100,
              //         color: Colors.blue,
              //       ),
              //     ),
              //
              //   ],
              // ),



            ],
          ),
        ),
      ),

    ));
  }
  TableRow buildHeaderRow(List<String> cells, {bool isHeader=false}) => TableRow(
      children: cells.map((cell){
        final style = TextStyle(
          fontFamily: "Poppins",
          fontWeight: isHeader ? FontWeight.w600 : FontWeight.w500,
          fontSize: isHeader? 13 : 11,
          color: isHeader ? Color(0xFF474747) : Color(0xFF474747),);
        return Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Text(cell,style:style ,textAlign: TextAlign.center,),
          ),
        );
      }).toList()
  );



  TableRow buildRow(List<String> cells, String icon, Color color,
      {bool isHeader = false}) {
    final style = TextStyle(
      fontFamily: "Poppins",
      fontWeight: isHeader ? FontWeight.w400 : FontWeight.w400,
      fontSize: isHeader ? 11 : 13,
      color: isHeader ? Color(0xFF474747) : Color(0xFF474747),
    );

    return TableRow(
      children: [
        ...cells.take(3).map((cell) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: Center(
              child: Text(
                cell,
                style: style,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }).toList(),
        Padding(
          padding:EdgeInsets.fromLTRB(0, 25, 0, 25),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cells.last,
                  style: style.copyWith(color: color),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: SvgPicture.asset(
                    icon,
                    color: color,
                    height: 10,
                    width: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }




}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}