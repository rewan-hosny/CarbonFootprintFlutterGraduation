import 'package:flutter/material.dart';
import 'package:graduation/components/socal_card.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/services/api_service.dart';
// class RowOfSocalCards extends StatelessWidget {
//   const RowOfSocalCards({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     SocalCard(icon: "assets/icons/logos_google-icon.svg",press: (){
//
//
//       APIService.googleLogin().then((response) =>{
//         if(response.status=="Added new user"){
//           print("Added new user "),
//           print("token "+response.token!),
//           Navigator.pushNamed(context, CompleteProfileScreen.routeName)
//
//
//         }
//         else{
//           print("Already registered"),
//           print(response.status),
//           // print("status "+response.status!),
//           // print("Already registered"),
//           // print("token "+response.token!),
//           //navigate to the start of the app directly
//           Navigator.pushNamed(context, CreateNewPasswordScreen.routeName)
//       }
//       });
//
//
//     },),
//     SocalCard(icon: "assets/icons/entypo-social_twitter-with-circle.svg",press: (){},),
//     SocalCard(icon: "assets/icons/logos_facebook.svg",press: (){},),
// ],
// );
//   }
// }
import 'dart:convert';
import 'dart:io';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:graduation/models/calculate_carbon_request_model.dart';
import 'package:graduation/models/calculate_carbon_response_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:html/parser.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/forget_password_request_model.dart';
import 'package:graduation/models/forget_password_response_model.dart';
import 'package:graduation/models/google_login_response.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/models/login_response_model.dart';
import 'package:graduation/models/login_with_remember_request_model.dart';
import 'package:graduation/models/login_with_remember_response.dart';
import 'package:graduation/models/register_request_model.dart';
import 'package:graduation/models/register_response_model.dart';
import 'package:graduation/models/remember_me_request_model.dart';
import 'package:graduation/models/remember_me_response_model.dart';
import 'package:graduation/models/reset_password_request_model.dart';
import 'package:graduation/models/reset_password_response_model.dart';

import 'package:graduation/models/verify_request_model.dart';
import 'package:graduation/models/verify_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/carbon_advices_resposnse_model.dart';
import '../models/logout_response_model.dart';
import '../models/prediction_request_model.dart';
import '../models/prediction_response_model.dart';
import '../models/scan_plant_response_model.dart';
import 'package:flutter/material.dart';

import '../models/update_profile_request.dart';
import '../models/update_profile_response.dart';
import '../models/upload_profile_image_response.dart';
import '../models/user_profile_data_response.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../screens/web_page/web_page_screen.dart';

class RowOfSocalCards extends StatefulWidget {
  const RowOfSocalCards({Key? key}) : super(key: key);

  @override
  State<RowOfSocalCards> createState() => _RowOfSocalCardsState();
}

class _RowOfSocalCardsState extends State<RowOfSocalCards> {
  static var client = http.Client();
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  // void initState() {
  //   super.initState();
  //   flutterWebViewPlugin.onUrlChanged.listen((String url) {
  //     if (url.contains('http://localhost:5000/api/login/google')) {
  //       // Handle response from API
  //       String response = url.split('response=')[1];
  //       flutterWebViewPlugin.close();
  //       // Show response as a webpage in WebView
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (BuildContext context) => Scaffold(
  //           appBar: AppBar(title: Text('API Response')),
  //           body: WebviewScaffold(
  //             url: 'data:text/html;charset=utf-8,' + response,
  //             withJavascript: true,
  //           ),
  //         ),
  //       ));
  //     }
  //   }
  //   );
  // }
  //
  //
  //
  // Future<void> googleLogin() async {
  //   Map<String, String> requestHeaders = {
  //     'Content-Type' : 'application/json',
  //   } ;
  //
  //   var url = Uri.http(urlForGoogleLogin,googleLoginEndpoint);
  //   var response = await client.get
  //     (     url,
  //     // headers: requestHeaders,
  //     //body: jsonEncode(model.toJson()),
  //
  //   );
  //
  //   print("response body ");
  //   print("                                       ");
  //   print(response.body);
  //   print("                                       ");
  //   print("response body end");
  //   final document = parse(response.body);
  //   final redirectUrl = document.querySelector('a')?.attributes['href'];
  //   print("redirect url");
  //   print(redirectUrl);
  //   // print("                                                           ");
  //   // print("response headers");
  //   //
  //   // print(response.headers);
  //   // print("--------------------------------------------------------");
  //   // print("                                                           ");
  //   // return googleResponseModel(response.body);
  //   flutterWebViewPlugin.launch(response.body);
  //   print("reached here");
  // }



  @override
  Widget build(BuildContext context) {
        return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SocalCard(icon: "assets/icons/logos_google-icon.svg",press: (){
      // APIService.googleLogin().then((response) =>{
      //   if(response.status=="Added new user"){
      //     print("Added new user "),
      //     print("token "+response.token!),
      //     Navigator.pushNamed(context, CompleteProfileScreen.routeName)
      //
      //
      //   }
      //   else{
      //     print("Already registered"),
      //     print(response.status),
      //     // print("status "+response.status!),
      //     // print("Already registered"),
      //     // print("token "+response.token!),
      //     //navigate to the start of the app directly
      //     Navigator.pushNamed(context, CreateNewPasswordScreen.routeName)
      // }
      // });
      print("clicked on the button");
    //  googleLogin();

      Navigator.pushNamed(context, WebPageScreen.routeName);




    },),
    SocalCard(icon: "assets/icons/entypo-social_twitter-with-circle.svg",press: (){},),
    SocalCard(icon: "assets/icons/logos_facebook.svg",press: (){},),
],
);
  }
}
