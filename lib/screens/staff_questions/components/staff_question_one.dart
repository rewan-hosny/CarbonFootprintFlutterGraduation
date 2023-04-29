import 'package:flutter/material.dart';
import 'package:graduation/components/question_page_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/questions/components/question_two.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_two.dart';
import 'package:graduation/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../StaffHello/StaffHello.dart';


class StaffQuestionOne extends StatefulWidget {
  static String routeName = "/StaffQuestionOne";
  const StaffQuestionOne({Key? key}) : super(key: key);

  @override
  State<StaffQuestionOne> createState() => _StaffQuestionOneState();
}
class _StaffQuestionOneState extends State<StaffQuestionOne> {
  //List<dynamic> selectedList = [];
  Map<dynamic,dynamic> answersData = {};
  //من اول هنااااا

  String answer = "";
  bool isTouching1 = false;
  bool isTouching2 = false;
  bool isTouching3 = false;
  bool isTouching4 = false;
  Color currentColor = question_color;
  handleTouch(
      bool confirmTouch1,
      bool confirmTouch2,
      ) {
    setState(() {
      isTouching1 = confirmTouch1;
      isTouching1 = confirmTouch2;
    });

  }
//لحد هناااااااااااا


//     String savedValue = "";
//     checkSavedValue() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     print("prefs.getString('foodType')!    "+prefs.getString('foodType')!);
//     if(prefs.getString('foodType')!=null){
//       savedValue = prefs.getString('foodType')!;
//     }else{
//       savedValue = "";
//     }
//
//   }


//final String savedValue = test() as String ;
  @override

  initState()  {
    // checkSavedValue();
    // if(savedValue!=""){
    //   answer = savedValue;
    //   //print("answer = "+ answer);
    // }
    // else{
    //   answer = "";
    //   print("printed answer empty");
    // }
    // print("initState Called");



  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 1,
                                    child: Text(
                                      "Elect", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      maxLines: 15,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize:
                                          getProportionateScreenWidth(23),
                                          fontFamily: "Poppins3",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          height: 1.8),
                                    ),
                                  ),
                                  //    SizedBox(height: SizeConfig.screenHeight*0.04,),
                                  Column(
                                    children: [
                                      Text(
                                        "Q 1", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(24),
                                            fontFamily: "Poppins",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        "of 6",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(14),
                                            fontFamily: "Poppins3",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: staff_Q1_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(40))),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        // color: Colors.purple,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: SizedBox(
                                    height: SizeConfig.screenHeight * 0.011)),
                            Expanded(
                              flex: 6,
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      image:
                                      AssetImage("assets/images/staff_Q1.png"),//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(

                                  "How much electricity did the university consume for HVAC (Heating, Ventilation, and Air Conditioning)?",//hereeeeeeeeeeeeeeeeeeeeeeeeeeee
                                  style: questionsStyle
                              , textAlign: TextAlign.center,

                              ),

                            ),
                            Listener(
                              onPointerDown: (event) => setState(() {
                                isTouching1 = true;
                                isTouching2 = false;
                                isTouching3 = false;
                                isTouching4 = false;
                              }),
                              // onPointerUp: (event) => setState(() {
                              //   isTouching = false;
                              // }),

                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 12, right: 12, top: 7, bottom: 7),
                                decoration: BoxDecoration(
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    // color: Q1_mainColor,
                                    color: isTouching1 == true
                                        ? staff_Q1_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text("0-50,000 kWh",
                                        //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                         style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                  fontFamily: "Poppins",
                                  color: isTouching1 == true
                                      ? Colors.white
                                      :currentColor,

                                ),
                              ),
                                    value: "0-50,000 kWh", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    groupValue: answer,
                                    onChanged: (value) {
                                      setState(() {
                                        answer = value.toString();
                                      });
                                    }),
                              ),
                            ),
                            Listener(
                              onPointerDown: (event) => setState(() {
                                isTouching1 = false;
                                isTouching2 = true;
                                isTouching3 = false;
                                isTouching4 = false;
                              }),
                              // onPointerUp: (event) => setState(() {
                              //   isTouching2 = false;
                              // }),
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 12, right: 12, top: 7, bottom: 7),
                                decoration: BoxDecoration(
                                    color: isTouching2 == true
                                        ? staff_Q1_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text(
                                      "50,000 -65,000 kWh",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                  fontFamily: "Poppins",
                                  color: isTouching2 == true
                                      ? Colors.white
                                      :currentColor,

                                ),
                                    ),
                                    value: "50,000 -65,000 kWh",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    groupValue: answer,
                                    onChanged: (value) {
                                      setState(() {
                                        answer = value.toString();
                                      });
                                    }),
                              ),
                            ),
                            Listener(
                              onPointerDown: (event) => setState(() {
                                isTouching1 = false;
                                isTouching2 = false;
                                isTouching3 = true;
                                isTouching4 = false;
                              }),
                              // onPointerUp: (event) => setState(() {
                              //   isTouching3= false;
                              // }),
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 12, right: 12, top: 7, bottom: 7),
                                decoration: BoxDecoration(
                                    color: isTouching3 == true
                                        ? staff_Q1_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "65,000 – 75,000 kWh",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                        fontFamily: "Poppins",
                                        color: isTouching3 == true
                                            ? Colors.white
                                            :currentColor,

                                      ),
                                    ),
                                    activeColor: Colors.white,
                                    value: "65,000 – 75,000 kWh",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    groupValue: answer,
                                    onChanged: (value) {
                                      setState(() {
                                        answer = value.toString();
                                      });
                                    }),
                              ),
                            ),
                            Listener(
                              onPointerDown: (event) => setState(() {
                                isTouching1 = false;
                                isTouching2 = false;
                                isTouching3 = false;
                                isTouching4 = true;
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 12, right: 12, top: 7, bottom: 7),
                                decoration: BoxDecoration(
                                    color: isTouching4 == true
                                        ? staff_Q1_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "75,000+ kWh", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                        fontFamily: "Poppins",
                                        color: isTouching4 == true
                                            ? Colors.white
                                            :currentColor,

                                      ),
                                    ),
                                    activeColor: Colors.white,
                                    value: "75,000+ kWh", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    groupValue: answer,
                                    onChanged: (value) {
                                      setState(() {
                                        answer = value.toString();
                                      });
                                    }),
                              ),
                            ),




                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                    height: SizeConfig.screenHeight * 0.011)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.06),
            Expanded(
                flex: 1,
                child: Container(
                  //  color: Colors.lightBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(

                            onPressed: (){
                              Navigator.pushNamed(context, StaffHello.routeName);
                            },
                            child: Text(
                              "Prev",
                              style: TextStyle(fontSize: 23, color: staff_Q1_mainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20))),
                              padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                              primary: Colors.white,
                              backgroundColor: prevButtonColor,
                            )),
                        ElevatedButton(
                            onPressed: ()
                            async {
                              // SharedPreferences prefs = await SharedPreferences.getInstance();
                              // prefs.setString('foodType', answer);
                              // questionsAnswersData["test data"]="test test";
                              //
                              //  SharedPreferences prefs = await SharedPreferences.getInstance();
                              //  prefs.setString('foodType',answer);
                              //


                              if(answer == "0-50,000 kWh"){
                                answersData["Electricity"]="a";
                              }
                              else if(answer == "50,000 -65,000 kWh"){
                                answersData["Electricity"]="b";
                              }
                              else if(answer == "65,000 – 75,000 kWh"){
                                answersData["Electricity"]="c";
                              }
                              else if(answer == "75,000+ kWh"){
                                answersData["Electricity"]="d";
                              }


                              // print("after you click on button in page one and my current data is : ");
                              // print(answersData.length);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StaffQuestionTwo(
                                          answersData

                                      ))


                              );


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
                              backgroundColor: staff_Q1_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            )),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
