import 'package:flutter/material.dart';
import 'package:graduation/components/question_page_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/questions/components/question_seven.dart';
import 'package:graduation/screens/questions/components/question_two.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_four.dart';
import 'package:graduation/size_config.dart';
class StaffQuestionThree extends StatefulWidget {
  static String routeName = "/StaffQuestionThree";
  final Map<dynamic,dynamic> answersData ;
   StaffQuestionThree(this.answersData) ;

  @override
  State<StaffQuestionThree> createState() => _StaffQuestionThreeState();
}

class _StaffQuestionThreeState extends State<StaffQuestionThree> {
  String answer = "";
  Color currentColor = question_color;
  bool isTouching1 = false;
  bool isTouching2 = false;
  bool isTouching3 = false;
  bool isTouching4 = false;
  handleTouch(
      bool confirmTouch1,
      bool confirmTouch2,
      ) {
    setState(() {
      isTouching1 = confirmTouch1;
      isTouching1 = confirmTouch2;
    });
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
                                      "water", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        "Q 3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                            color: Q2_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                      AssetImage("assets/images/q2_img.jpg"),//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                  "What is the total water consumption in the university?",//hereeeeeeeeeeeeeeeeeeeeeeeeeeee
                                  textAlign: TextAlign.center,
                                  style: questionsStyle),

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
                                        ? Q2_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text("0-100 m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        style: TextStyle(
                                            fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                            fontFamily: "Poppins",
                                            color: isTouching1 == true //hereeeeeee
                                          ? Colors.white
                                          :currentColor,)),
                                    value: "0-100 m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text(
                                      "100-200 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching2 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    value: "100-200 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "200-300 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching3 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    activeColor: Colors.white,
                                    value: "200-300 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "300+ m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching4 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    activeColor: Colors.white,
                                    value: "300+ m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Prev",
                              style: TextStyle(fontSize: 23, color: Q2_mainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                            onPressed: ()  {


                              if(answer == "0-100 m^3"){
                                widget.answersData["Water"]="a";
                              }
                              else if(answer =="100-200 m^3"){
                                widget.answersData["Water"]="b";
                              }
                              else if(answer == "200-300 m^3"){
                                widget.answersData["Water"]="c";
                              }else if(answer == "300+ m^3"){
                                widget.answersData["Water"]="d";
                              }


                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StaffQuestionFour(widget.answersData)));


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
                              backgroundColor: Q2_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            )),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

