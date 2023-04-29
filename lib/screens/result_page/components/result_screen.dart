import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../regression1_page/regression1_screen.dart';
//import 'package:flutter_svg/flutter_svg.dart';
class ResultScreen extends StatefulWidget {
  final Map<dynamic,dynamic> answersData ;


   ResultScreen( this.answersData);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String largestValue ='';
  String advice1='';
  String advice2='';
  String advice3='';

// @override
//   void setState(VoidCallback fn) {
//     // TODO: implement setState
//     //super.setState(fn);
//   largestValue=widget.answersData["largestEmissionType"];
//   advice1=widget.answersData["advice1"];
//   advice2=widget.answersData["advice2"];
//   advice3=widget.answersData["advice3"];
//   print("largestValue"+largestValue);
//   print("advice1"+advice1);
//   print("advice2"+advice2);
//   print("advice3"+advice3);
//   }

  @override
  void initState() {
    // TODO: implement initState
    largestValue=widget.answersData["largestEmissionType"];
    advice1=widget.answersData["advice1"];
    advice2=widget.answersData["advice2"];
    advice3=widget.answersData["advice3"];
    print("largestValue  "+largestValue);
    print("advice1  "+advice1);
    print("advice2  "+advice2);
    print("advice3  "+advice3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Flexible(
                flex: 1,
                child: Container(
                  child: Text("Your Result"
                    ,style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(top:50,bottom:10 ),
                  height: 300,
                  color: Color(0xFF1CA953),
                ),),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: LightModeLightGreenColor,
                  )),
            ],
          ),


          Container(
            width: 370,
            height: 355,
            margin: EdgeInsets.fromLTRB(20, 100,20, 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage("assets/images/group_14.jpeg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),

            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.018,),
                Text("Thanks!",
                  style: TextStyle(
                      color: Color(0xFF1CA953),
                      fontSize: 22,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Your Carbon Footprint is",
                  style: TextStyle(
                      color: Color(0xFF474747),
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          LightModeMainColor,
                          Color(0xFFA3D0A6),
                        ]
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),


                  child: Text(""+widget.answersData["carbon emissions"]+"%", //edittttttttttttttttt
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),),
                  alignment: Alignment.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                Text("The Highest Score",
                  style: TextStyle(
                      color: Color(0xFF474747),
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text(""+largestValue, //edittttttttttttttt
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF4ECB71),
                    fontSize: 23,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(22),
            child: Column(

              children: [
                SizedBox(height: SizeConfig.screenHeight*0.54,),

                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("See our advices for you :",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,),),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.03,),

                Container(
                  width: SizeConfig.screenWidth,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: [
                            Container(
                              width: 6,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF01A458),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth*0.03,),
                            SizedBox(
                              width: 300,
                              child: Text(""+advice1,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Color(0xFF474747),
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,)),
                            ),
                          ]
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 18,
                        height: 18,
                        child: Image(
                          image: AssetImage("assets/images/logos_todomvc.png"),
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),



                Container(
                  width: SizeConfig.screenWidth,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: [
                            Container(
                              width: 6,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth*0.03,),
                            SizedBox(
                              width: 300,
                              child: Text(""+advice2,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Color(0xFF474747),
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,)),
                            ),
                          ]
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 18,
                        height: 18,
                        child: Image(
                          image: AssetImage("assets/images/logos_todomvc.png"),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),




                Container(
                  width: SizeConfig.screenWidth,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children:[ Container(
                            width: 6,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                            SizedBox(width: SizeConfig.screenWidth*0.03,),
                            SizedBox(
                              width: 300,
                              child: Text(""+advice3,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Color(0xFF474747),
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,)),
                            ),
                          ]
                      ),
                      //SizedBox(width: SizeConfig.screenWidth*0.32,), //editttttttt
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 18,
                        height: 18,
                        child: Image(
                          image: AssetImage("assets/images/logos_todomvc.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);

                          },
                          child: Text(
                            "Prev",
                            style: TextStyle(fontSize: 23, color: LightModeMainColor,fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20))),
                            padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 37),
                            primary: Colors.white,
                            backgroundColor: prevButtonColor,
                          )),
                      ElevatedButton(
                          onPressed: () {
                            // print("initiated ");
                            // APIService.carbonAdvice().then((response) => {
                            //   if(response != null){
                            //     print("It's not equal null"),
                            //     print(response.largestEmissionType),
                            //   //  print(response.advices![0])
                            //   }
                            //   else{
                            //     print("It returned null")
                            //   }
                            //
                            //
                            // }
                            // );

                            Navigator.pushNamed(context, Regression1Screen.routeName);
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 23, color: Colors.white,),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20))),
                            padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 37),
                            primary: Colors.white,
                            backgroundColor: LightModeMainColor,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}



//
// class Body extends StatelessWidget {
//   final Map<dynamic,dynamic> answersData ;
//
//   const Body({Key? key,required this.answersData}) : super(key: key);
//
//   //
//   // APIService.carbonAdvice().then((response) =>{
//   // print("has entered the end point"),
//   // if(response != "Null"){
//   // print("connection to carbonAdvice EndPoint succeed "),
//   // print("response is "+response.largestEmissionType!),
//   // print(response.advices![0]!),
//   // print(response.advices![1]!),
//   // print(response.advices![2]!),
//   // widget.answersData["largestEmissionType"]=response.largestEmissionType!,
//   // widget.answersData["advice1"]=response.advices![0]!,
//   // widget.answersData["advice2"]=response.advices![1]!,
//   // widget.answersData["advice3"]=response.advices![2]!,
//   //
//   //
//   // //  Navigator.pushNamed(context, SignUpScreen.routeName)
//   // }
//   // else{
//   // print("connection to carbonAdvice failed")
//   // }
//   // })
//   //
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.start,
//
//             children: [
//
//               Flexible(
//                 flex: 1,
//                 child: Container(
//                   child: Text("Your Result"
//                     ,style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.w600),
//                     textAlign: TextAlign.center,
//                   ),
//                   padding: EdgeInsets.only(top:50,bottom:10 ),
//                   height: 300,
//                   color: Color(0xFF1CA953),
//                 ),),
//               Flexible(
//                   flex: 2,
//                   child: Container(
//                     color: LightModeLightGreenColor,
//                   )),
//             ],
//           ),
//
//
//           Container(
//             width: 370,
//             height: 355,
//             margin: EdgeInsets.fromLTRB(20, 100,20, 30),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image:
//                 AssetImage("assets/images/Group 14.png"),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(15)),
//               color: Colors.white,),
//
//             child: Column(
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight*0.018,),
//                 Text("Thanks!",
//                   style: TextStyle(
//                       color: Color(0xFF1CA953),
//                       fontSize: 22,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w600),),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("Your Carbon Footprint is",
//                   style: TextStyle(
//                       color: Color(0xFF474747),
//                       fontSize: 19,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w600),),
//                 SizedBox(height: SizeConfig.screenHeight*0.02,),
//                 Container(
//                   width: 150,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           LightModeMainColor,
//                           Color(0xFFA3D0A6),
//                         ]
//                     ),
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//
//
//                   child: Text(""+answersData["carbon emissions"]+"%", //edittttttttttttttttt
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 35,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.w600),),
//                   alignment: Alignment.center,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight*0.02,),
//                 Text("The Highest Score",
//                   style: TextStyle(
//                       color: Color(0xFF474747),
//                       fontSize: 19,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("", //edittttttttttttttt
//                   style: TextStyle(
//                     fontStyle: FontStyle.italic,
//                     color: Color(0xFF4ECB71),
//                     fontSize: 23,
//                     fontFamily: "Poppins",
//                     fontWeight: FontWeight.bold,),),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(22),
//             child: Column(
//
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight*0.54,),
//
//                 Container(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Text("See our advices for you :",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 19,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w600,),),
//                   alignment: Alignment.bottomLeft,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight*0.03,),
//
//                 Container(
//                   width: SizeConfig.screenWidth,
//                   height: 65,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(5)),
//                   ),
//
//
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                           children: [
//                             Container(
//                               width: 6,
//                               height: 35,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFF01A458),
//                                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                               ),
//                             ),
//                             SizedBox(width: SizeConfig.screenWidth*0.03,),
//                             Text("",
//                                 style: TextStyle(
//                                   color: Color(0xFF474747),
//                                   fontSize: 16,
//                                   fontFamily: "Poppins",
//                                   fontWeight: FontWeight.w500,)),
//                           ]
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(right: 8),
//                         width: 18,
//                         height: 18,
//                         child: Image(
//                           image: AssetImage("assets/images/logos_todomvc.png"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//
//
//
//                 Container(
//                   width: SizeConfig.screenWidth,
//                   height: 65,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(5)),
//                   ),
//
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                           children: [
//                             Container(
//                               width: 6,
//                               height: 35,
//                               decoration: BoxDecoration(
//                                 color: Colors.amber,
//                                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                               ),
//                             ),
//                             SizedBox(width: SizeConfig.screenWidth*0.03,),
//                             Text("",
//                                 style: TextStyle(
//                                   color: Color(0xFF474747),
//                                   fontSize: 16,
//                                   fontFamily: "Poppins",
//                                   fontWeight: FontWeight.w500,)),
//                           ]
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(right: 8),
//                         width: 18,
//                         height: 18,
//                         child: Image(
//                           image: AssetImage("assets/images/logos_todomvc.png"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//
//
//
//
//                 Container(
//                   width: SizeConfig.screenWidth,
//                   height: 65,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(5)),
//                   ),
//
//
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                           children:[ Container(
//                             width: 6,
//                             height: 35,
//                             decoration: BoxDecoration(
//                               color: Colors.pink,
//                               borderRadius: BorderRadius.all(Radius.circular(10)),
//                             ),
//                           ),
//                             SizedBox(width: SizeConfig.screenWidth*0.03,),
//                             Text("",
//                                 style: TextStyle(
//                                   color: Color(0xFF474747),
//                                   fontSize: 16,
//                                   fontFamily: "Poppins",
//                                   fontWeight: FontWeight.w500,)),
//                           ]
//                       ),
//                       //SizedBox(width: SizeConfig.screenWidth*0.32,), //editttttttt
//                       Container(
//                         margin: EdgeInsets.only(right: 8),
//                         width: 18,
//                         height: 18,
//                         child: Image(
//                           image: AssetImage("assets/images/logos_todomvc.png"),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: Align(
//                   alignment: FractionalOffset.bottomCenter,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ElevatedButton(
//                           onPressed: () => () {},
//                           child: Text(
//                             "Prev",
//                             style: TextStyle(fontSize: 23, color: LightModeMainColor,fontWeight: FontWeight.bold),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(20))),
//                             padding:
//                             EdgeInsets.symmetric(vertical: 16, horizontal: 37),
//                             primary: Colors.white,
//                             backgroundColor: prevButtonColor,
//                           )),
//                       ElevatedButton(
//                           onPressed: () => () {},
//                           child: Text(
//                             "Next",
//                             style: TextStyle(fontSize: 23, color: Colors.white,),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(20))),
//                             padding:
//                             EdgeInsets.symmetric(vertical: 16, horizontal: 37),
//                             primary: Colors.white,
//                             backgroundColor: LightModeMainColor,
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//
//       ),
//     );
//   }
// }
