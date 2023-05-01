import 'package:flutter/material.dart';
import 'package:graduation/components/question_page_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/calculate_carbon_request_model.dart';
import 'package:graduation/screens/result_page/components/result_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../../models/uni_calc_request_model.dart';
import '../../Staff_result_question/Staff_result_question.dart';


class StaffQuestionSix extends StatefulWidget {
  static String routeName = "/StaffQuestionSix";
  final Map<dynamic,dynamic> answersData ;
   StaffQuestionSix(this.answersData);

  @override
  State<StaffQuestionSix> createState() => _StaffQuestionSixState();
}

class _StaffQuestionSixState extends State<StaffQuestionSix> {
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
                                      "Power", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        "Q 6", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                            color: Q9_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                      AssetImage("assets/images/q9_img.jpg"),//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                  "How much natural gas did the university consume?",//hereeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q9_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text("0-50 m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        style: TextStyle(
                                          fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                          fontFamily: "Poppins",
                                          color: isTouching1 == true //hereeeeeee
                                              ? Colors.white
                                              :currentColor,)),
                                    value: "0-50 m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q9_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    activeColor: Colors.white,
                                    title: Text(
                                      "50-100 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching2 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    value: "50-100 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q9_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "100-200 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching3 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    activeColor: Colors.white,
                                    value: "100-200 m^3",//hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                                        ? Q9_mainColor //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                        : Colors.white,
                                    border:
                                    Border.all(color: borderColor, width: 2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(20))),
                                child: RadioListTile(
                                    title: Text(
                                      "200+ m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(16), //hereeeeeeeeeeeeee
                                        fontFamily: "Poppins",
                                        color: isTouching4 == true //hereeeeeee
                                            ? Colors.white
                                            :currentColor,),
                                    ),
                                    activeColor: Colors.white,
                                    value: "200+ m^3", //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                              style: TextStyle(fontSize: 23, color: Q9_mainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
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
                              if(answer == "0-50 m^3"){
                                widget.answersData["Power"]="a";
                              }
                              else if(answer =="50-100 m^3"){
                                widget.answersData["Power"]="b";
                              }
                              else if(answer == "100-200 m^3"){
                                widget.answersData["Power"]="c";
                              }else if(answer == "200+ m^3"){
                                widget.answersData["Power"]="d";
                              }
                           //   widget.answersData["carType"]=answer;



                              UniCalcRequestModel model = UniCalcRequestModel(
                                hvac:widget.answersData["Electricity"],
                                nonHvac:widget.answersData["Light"],
                                water:widget.answersData["Water"],
                                paper:widget.answersData["Waste"],
                                dist:widget.answersData["Car"],
                                gas:widget.answersData["Power"],
                                  year:'2023'


                              );
                              APIService.uniCalc(model).then((response) =>{
                                if(response.status=="Success"){
                                  print("Success"),
                                  print("carbon emissions : "),
                                  print(response.carbonEmission),


                              print(response.carbonEmission.toString()?.substring(0,4)),
                                  widget.answersData["uniCalc result"]=response.carbonEmission.toString()?.substring(0,3),
                                  //  Navigator.pushNamed(context, QuestionScreen.routeName)

                             //  APIService.carbonAdvice().then((response) => {
                             //  if(response != null){
                             //  print("It's not equal null"),
                             //  print(response.largestEmissionType),
                             //  print(response.advices![0]),
                             // // largestValue=response.largestEmissionType!,
                             //  widget.answersData["largestEmissionType"]=response.largestEmissionType!,
                             //  widget.answersData["advice1"]=response.advices![0]!,
                             //  widget.answersData["advice2"]=response.advices![1]!,
                             //  widget.answersData["advice3"]=response.advices![2]!,
                             //
                             //    Navigator.push(
                             //        context,
                             //        MaterialPageRoute(
                             //            builder: (context) => ResultScreen(widget.answersData)
                             //        ))
                             //
                             //
                             //  }
                             //  else{
                             //  print("It returned null")
                             //  }
                             //
                             //
                             //  }
                             //
                             //
                             //
                             //
                             //  ),

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => StaffResultScreen( answersData: widget.answersData,)
                                      ))



                              }
                                else{
                                  print("fail fail fail")
                                }
                              });






                              //
                              // foodType:widget.answersData["foodType"],
                              // water:widget.answersData["water"],
                              // cigarettes:widget.answersData["cigarettes"],
                              // paper:widget.answersData["paper"],
                              // food:widget.answersData["food"],
                              // package:widget.answersData["package"],
                              //
                              // distKm:widget.answersData["distKm"],
                              // carType:widget.answersData["carType"],
                              //
                              //


















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
                              backgroundColor: Q9_mainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            )),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
