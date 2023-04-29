import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/verify_request_model.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../otp/components/body.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {


  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  TextEditingController pin1Controller = TextEditingController();
  TextEditingController pin2Controller = TextEditingController();
  TextEditingController pin3Controller = TextEditingController();
  TextEditingController pin4Controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
    super.dispose();
  }

  void nextField (String value , FocusNode focusNode){
    if(value.length==1){
      focusNode.requestFocus();
    }
  }




  @override
  Widget build(BuildContext context) {
    return Form(

      child: Column(

        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

               Container(
                  width: 45,
                  height: 50,
                  decoration:
                  BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                  ),

                  child: SizedBox(
                    width: getProportionateScreenWidth(34),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: pin1Controller,
                        autofocus: true,
                        style: TextStyle(
                            fontSize: 24),
                        keyboardType: TextInputType.number,
                        //obscureText: true,
                        textAlign: TextAlign.center,
                       decoration: bindecoration,
                        onChanged: (value){
                          // also you need to store your value
                          nextField(value,pin2FocusNode!);

                        },

                      ),

                  ),
                ),
              ),
             SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(

                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox(

                  width: getProportionateScreenWidth(34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: pin2Controller,
                      focusNode: pin2FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        nextField(value,pin3FocusNode!);

                      },

                    ),
                  ),
                ),
              ),
            SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(
                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox(
                  width: getProportionateScreenWidth(34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: pin3Controller,
                      focusNode: pin3FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        nextField(value,pin4FocusNode!);

                      },

                    ),
                  ),
                ),
              ),
             SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(

                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox (
                  width: getProportionateScreenWidth(60),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: pin4Controller,
                      focusNode: pin4FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        pin4FocusNode?.unfocus();

                      },

                    ),
                  ),
                ),
              ),

    ],
          ),
          SizedBox(height: SizeConfig.screenHeight*0.03),
          DefaultButton(text: "Verify",press: (){
            print(pin1Controller.text+pin2Controller.text+pin3Controller.text+pin4Controller.text,
            );
            VerifyRequestModel model = VerifyRequestModel(

              otp:pin1Controller.text+pin2Controller.text+pin3Controller.text+pin4Controller.text,


            );
            APIService.verify(model).then((response) =>{
             //  print(response.status)
             // print(response.status)
              if(response.status == "verified"){
                print("succeed"),
                print(response.status),
                Navigator.pushNamed(context, CreateNewPasswordScreen.routeName)

              }
              else{
                print("fail"),
                print(response.status),
              }

            });




          }),


        ],
      ),
    );
  }
}
