import 'package:flutter/material.dart';
import 'package:graduation/components/question_page_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/screens/questions/components/question_three.dart';
import 'package:graduation/size_config.dart';

class QuestionTwo extends StatefulWidget {
  static String routeName = "/QuestionTwo";
  final Map<dynamic,dynamic> answersData ;

   QuestionTwo( this.answersData) ;

  @override
  State<QuestionTwo> createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {
// start from here
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

// end here
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
                                      "Water",           // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        "Q 2",        // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(24),
                                            fontFamily: "Poppins",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        "of 9",
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
                            color: Q2_mainColor,      // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                      AssetImage("assets/images/q2_img.jpg"),    // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                  "How many liters of water do you drink per day in university?",    // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor                       // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text("1 - 2 liters",           // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        style:
                                        TextStyle(
                                            fontSize: getProportionateScreenWidth(16),
                                            fontFamily: "Poppins",
                                          color: isTouching1 == true
                                              ? Colors.white
                                              :currentColor,

                                        )



                                    ),
                                    value: "1 - 2 liters",              // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor                     // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text(
                                      "2 – 3 liters",             // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                        fontFamily: "Poppins",
                                        color: isTouching2 == true
                                            ? Colors.white
                                            :currentColor,

                                      ),
                                    ),
                                    value: "2 – 3 liters",        // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor               // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "3 – 5 liters",              // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                        fontFamily: "Poppins",
                                        color: isTouching3 == true
                                            ? Colors.white
                                            :currentColor,

                                      ),
                                    ),
                                    activeColor: Colors.white,
                                    value: "3 – 5 liters",          // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q2_mainColor              // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "up to 5 liters",                     // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style:  TextStyle(
                                        fontSize: getProportionateScreenWidth(16),
                                        fontFamily: "Poppins",
                                        color: isTouching4 == true
                                            ? Colors.white
                                            :currentColor,

                                      ),
                                    ),
                                    activeColor: Colors.white,
                                    value: "up to 5 liters",                // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                            onPressed: ()  {

                              widget.answersData["water"]="2.5";
                              print("after click on button in page two");
Navigator.pop(context);
                            // Navigator.push(
                            // context,
                            // MaterialPageRoute(
                            // builder: (context) => QuestionOne()));



                            },
                            child: Text(
                              "Prev",
                              style: TextStyle(fontSize: 23, color: Q2_mainColor),    // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                            onPressed: () {


                            if(answer == "1 - 2 liters"){
                              widget.answersData["water"]="1.5";
                            }
                            else if(answer == "2 – 3 liters"){
                              widget.answersData["water"]="2.5";
                            }
                            else if(answer == "3 – 5 liters"){
                              widget.answersData["water"]="4.0";

                            }
                            else if(answer == "up to 5 liters"){
                              widget.answersData["water"]="5";
                            }



                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuestionThree(widget.answersData)));


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
                              backgroundColor: Q2_mainColor,          // hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            )),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
