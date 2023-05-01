import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/StaffHello/StaffHello.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../staff_before_questions_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  bool value = false;
  Map<String,String> dates={};
  List<String> itemsFrom =['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023'];
  String? SelectedItem ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20,top:20),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.05,),
                TopBar(text: "       Questions", press: (){},),

                SizedBox(height: SizeConfig.screenHeight*0.1,),

                Align(
                  child: RichText(
                    text: TextSpan(
                      // style: LightModeSmallTextStyle,
                      children: <TextSpan>[
                        TextSpan(text: 'Choose ', style: TextStyle(
                            fontSize: 21, color: LightModeMainColor, fontWeight: FontWeight.w600,fontFamily: "Poppins2"
                        )),
                        TextSpan(text: 'the year before answering \nthe questions:', style: TextStyle(
                            fontSize: 21, color: LightModeSmallTextColor, fontWeight: FontWeight.w600,fontFamily: "Poppins2"
                        )),
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.08,),


                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: LightGray,
                      borderRadius: BorderRadius.all(Radius.circular(4))),

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
                              });
                              },
                            activeColor: LightModeMainColor,
                            checkColor: Colors.white,
                            autofocus: true,
                          ),
                        ),

                        Text("Current Year",style: TextStyle(
                          fontFamily: "Poppins", fontSize: 20, color: LightModeMainColor
                        ),)




                      ],
                    ), //edittttttttt
                ),

                SizedBox(height: SizeConfig.screenHeight*0.1,),

                Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth*0.06,),
                    Text("OR", style: TextStyle(fontSize: 23,fontFamily: "Poppins",fontWeight: FontWeight.bold,
                    color: LightModeMainColor),),
                    Text(" Select another year:",style: TextStyle(fontSize: 22,fontFamily: "Poppins3",
                        color: LightModeSmallTextColor)),
                  ],
                ),

                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Container(
                  width: 350,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: LightGray,
                    border: Border.all(color: Colors.black12,width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: DropdownButton<String>(
                    items: itemsFrom
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item,style: TextStyle(
                        fontSize: 14,
                        color: LightModeSmallTextColor,
                      ),),
                    ))
                        .toList(),
                    onChanged: (item)=> setState(() => SelectedItem = item),
                    iconSize: 27,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,),
                    hint: Text("  ......", style: TextStyle(
                        fontSize: 18,
                        color: LightModeMainColor),),
                    isExpanded: true,
                    value: SelectedItem,


                  ),

                ),
                // SizedBox(height: SizeConfig.screenHeight * 0.06),
                // Expanded(
                //     flex: 1,
                //     child: Container(
                //       alignment: Alignment.bottomRight,
                //       child: ElevatedButton(
                //           onPressed: (){
                //             Navigator.pushNamed(context, StaffQuestionOne.routeName);
                //           },
                //           child: Text(
                //             "Next",
                //             style: TextStyle(fontSize: 23, color: Colors.white),
                //           ),
                //           style: ElevatedButton.styleFrom(
                //             shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(20)
                //                 )
                //             ),
                //             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                //             primary: Colors.white,
                //             backgroundColor: LightModeMainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                //           )
                //       ),
                //     )

                // )
              ],
            ),

          ),
          SizedBox(height: SizeConfig.screenHeight * 0.06),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, StaffHello.routeName);
                          },
                          child: Text(
                            "Prev",
                            style: TextStyle(fontSize: 23, color: Colors.white), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20))),
                            padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                            primary: Colors.white,
                            backgroundColor: LightModeMainColor,
                          )),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, StaffQuestionOne.routeName);


                          },
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20))),
                            padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                            primary: Colors.white,
                            backgroundColor: LightModeMainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                          )),
                    ],
                  )))
        ],

      ),


    );
  }
}

// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(height: SizeConfig.screenHeight*0.05,),
//             TopBar(text: "       Questions", press: (){},),
//
//             SizedBox(height: SizeConfig.screenHeight*0.1,),
//
//             Align(
//               child: RichText(
//                 text: TextSpan(
//                   // style: LightModeSmallTextStyle,
//                   children: <TextSpan>[
//                     TextSpan(text: 'Choose ', style: TextStyle(
//                         fontSize: 21, color: LightModeMainColor, fontWeight: FontWeight.w600,fontFamily: "Poppins2"
//                     )),
//                     TextSpan(text: 'the year before answering \nthe questions:', style: TextStyle(
//                       fontSize: 21, color: LightModeSmallTextColor, fontWeight: FontWeight.w600,fontFamily: "Poppins2"
//                     )),
//                   ],
//                 ),
//               ),
//               alignment: Alignment.topLeft,
//             ),
//             SizedBox(height: SizeConfig.screenHeight*0.05,),
//
//
//             Container(
//               child: Row(
//                 children: [
//                   Transform.scale(
//                     scale: 1.3,
//                     child: Checkbox(
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
//                       value: value,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           this.value = value!;
//                         }
//                         );
//                       },
//                       activeColor: LightModeMainColor,
//                       checkColor: Colors.white,
//                       autofocus: true,
//                     ),
//                   ),
//
//                   Text("Current year",style: ContinueWithTextStyle,)
//
//
//
//
//                 ],
//               ),,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
