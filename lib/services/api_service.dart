import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graduation/models/Staff_GetAdmin_response_model.dart';
import 'package:graduation/models/Staff_check_admin_request_model.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';
import 'package:graduation/screens/stuff_download/stuff_download_screen.dart';
import 'package:graduation/screens/stuff_home_page/stuff_home_page_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:graduation/models/calculate_carbon_request_model.dart';
import 'package:graduation/models/calculate_carbon_response_model.dart';
import 'package:graduation/models/staff_download_request_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
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

import '../models/Staff_progress_request_model.dart';
import '../models/carbon_advices_resposnse_model.dart';
import '../models/logout_response_model.dart';
import '../models/prediction_request_model.dart';
import '../models/prediction_response_model.dart';
import '../models/scan_plant_response_model.dart';
import 'package:flutter/material.dart';

import '../models/solar_panel_request_model.dart';
import '../models/solar_panel_response_model.dart';
import '../models/staff_Smart_Light_request_model.dart';
import '../models/staff_get_target_response_model.dart';
import '../models/staff_home_page_response_model.dart';
import '../models/staff_progress_smartlight_request_model.dart';
import '../models/staff_set_target_request_model.dart';
import '../models/staff_set_target_response_model.dart';
import '../models/staff_smart_light_response_model.dart';
import '../models/staff_train_file_response_model.dart';
import '../models/staff_uploadTemp_response_model.dart';
import '../models/target_progress_response_model.dart';
import '../models/uni_calc_request_model.dart';
import '../models/uni_calc_response_model.dart';
import '../models/update_profile_request.dart';
import '../models/update_profile_response.dart';
import '../models/upload_profile_image_response.dart';
import '../models/user_profile_data_response.dart';

class APIService extends StatefulWidget {
  static var client = http.Client();
  static Future<Position> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        // Handle the case where the user denies permission
        return Future.error('User denied location permission');
      }
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return position;
  }


 static Future<LoginResponseModel> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;
    var url = Uri.http(baseUrl,loginEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    var Cookie = response.headers['set-cookie']??"null";
    print("I,m here");
    print("Cookie             "+Cookie!);
    if(Cookie != "null"){
      final endIndex = Cookie?.indexOf(";", 0);
      var session = Cookie?.substring(0,endIndex);
      // Retrieve the session ID from the response cookie

      print("session             "+session!);

      print("headerss        ");
      print(response.headers);
      print("end of headerss        ");
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currentSession', session!);
      // String sessionId = response.headers['set-cookie']!.split(';')[0].split('=')[1];
      // prefs.setString('sessionId', sessionId!);

    }

    // print(Cookie);
    return loginResponseModel(response.body);
    //
    // if(response.statusCode == 200 ){
    //   print("login token   "+response.body)
    //   // SHARED
    //  // print("cookie : "+response.headers['Cookie']!);
    //   return Future(() => true);
    // }
    // else{
    //   return Future(() => false);
    // }

  }



  static Future<CarbonAdvicesResposnseModel> carbonAdvice() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("currentSession"+prefs.getString('currentSession')!);
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

      'Cookie': //"session=eyJpZCI6MTF9.Y-Jn0Q.NfEuoLwwiejUtZ3vJW_NJW1HHNw"
      prefs.getString('currentSession')!
      // "session=eyJpZCI6MTN9.Y-J1XQ.aE6fFrFZBugirWaQzrxVtP8ckig"

    } ;


    var url = Uri.http(baseUrl,carbonAdviceEndpoint);
    var response = await client.get
      (     url,
      headers: requestHeaders,
      // body: jsonEncode(model.toJson()),

    );
    print("I am still in the end point");
    //  print("carbonAdvicesResposnseModel(response.body)");
//print(carbonAdvicesResposnseModel(response.body).largestEmissionType);
    return carbonAdvicesResposnseModel(response.body);


  }




  static Future<StaffSmartLightResponseModel> StaffSmartLight(
      StaffSmartLightRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl,staffSmartLight);
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    };
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    if (response.statusCode == 200) {
      print("rewwwwaaan");
      final jsonResponse = jsonDecode(response.body);
      return StaffSmartLightResponseModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to request solar panel calculation');
    }
  }







  static Future<TargetProgressResponeModel> StaffTargetProgress() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,staffTargetProgress);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );
    return targetProgressResponeModel(response.body);


  }

  static Future<LogoutResponseModel> Logout() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,logoutEndPoint);
    var response = await client.post
      (
      url,
      headers: requestHeaders,
    );
    return logoutResponseModel(response.body);



  }
  // Map<String, String> requestHeaders = {
  //   'Content-Type' : 'application/json',
  //   // prefs.setString('currentUserPublicId', temp_publicId!),
  //   'Cookie': prefs.getString('currentSession')!
  // } ;
  // var url = Uri.http(baseUrl,getCurrentUserDataEndPoint);
  // var response = await client.post
  // (
  // url,
  // headers: requestHeaders,
  // body: jsonEncode(model.toJson()),
  // );

  static Future<UniCalcResponseModel> uniCalc(UniCalcRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,uniCalcEndPoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return uniCalcResponseModel(response.body);
  }
//staff solar plan request progress
  static Future<void> StaffProgress(StaffProgressResponseModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,addSolarProgress);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    if(response.statusCode==200){
      print("zhgt");
    }

  }





  //staff progress smart light request
  static Future<void> StaffSmartLightProgress(StaffSmartLightProgressRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,staffSmartLightTargetProgress);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    if(response.statusCode==200){
      print("zhgt");
    }

  }



  static Future<bool> IsAdmin(StaffCheckAdmin model) async {
     var url = Uri.http(baseUrl,checkAdmin);
     Map<String, String> requestHeaders = {
       'Content-Type' : 'application/json',
     } ;
     var response = await client.post
     (
     url,
     headers: requestHeaders,
         body: jsonEncode(model.toJson()));

    if (response.statusCode == 200) {


        return true;

    }
    return false;
  }

  static Future<void> Download() async {
    final Uri _url = Uri.parse("http://192.168.1.6:5000/genTemp?start=2010&end=2020");

    // Set cookies as a string
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Set headers with the cookies
    Map<String, String> headers = {
      'Cookie': prefs.getString('currentSession')!
    };

    if (await canLaunchUrl(_url)) {
      await launchUrl(_url,mode: LaunchMode.externalApplication,
      webViewConfiguration: WebViewConfiguration(
      headers: headers));
    }
  }





  static Future<ScanPlantResponseModel> scanPlant() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl,flowersEndPoint);
    var request = http.MultipartRequest('POST', url);
    request.files.add(await http.MultipartFile.fromPath('file', prefs.getString('imagePath')!));
    var response = await request.send();
    final respStr = await response.stream.bytesToString();
    return scanPlantResponseModel(respStr);

  }
  // static Future<StaffUploadTempResponseModel> UploadExcelFile() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var url = Uri.http(baseUrl, uploadTempEndPoint);
  //   var request = http.MultipartRequest('POST', url);
  //   Map<String, String> requestHeaders = {
  //     'Cookie': prefs.getString('currentSession')!
  //   };
  //   request.headers.addAll(requestHeaders);
  //   var excelFile = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['xlsx', 'xls', 'csv'],
  //   );
  //
  //
  //   request.files.add(await http.MultipartFile.fromPath('file', excelFile!.files.first.path!));
  //   var response = await request.send();
  //   final respStr = await response.stream.bytesToString();
  //   return staffUploadTempResponseModel(respStr);
  // }
  static Future<StaffUploadTempResponseModel> uploadExcelFile(
      BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl, uploadTempEndPoint);
    var request = http.MultipartRequest('POST', url);
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    };
    request.headers.addAll(requestHeaders);
    var excelFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx', 'xls', 'csv'],
    );
    request.files
        .add(await http.MultipartFile.fromPath('file', excelFile!.files.first.path!));
    var response = await request.send();
    final respStr = await response.stream.bytesToString();
    StaffUploadTempResponseModel staffResponse = staffUploadTempResponseModel(respStr);


    return staffResponse;
  }






  static Future<SolarPanelResponseModel> SolarPanel(
      SolarPanelRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl,solarPanel);
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    if (response.statusCode == 200) {
      print("rewwwwaaan");
      final jsonResponse = jsonDecode(response.body);
      return SolarPanelResponseModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to request solar panel calculation');
    }
  }



  static Future<StaffSetTargetResponseModel> SetTarget(StaffSetTargetRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl,staffSetTargt);
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie': prefs.getString('currentSession')!
    } ;
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    if (response.statusCode == 201) {
      print("done");
      final jsonResponse = jsonDecode(response.body);
      return StaffSetTargetResponseModel.fromJson(jsonResponse);

    } else {
      throw Exception('Failed to request solar panel calculation');
    }
  }

//the end point in pact /graphTemp
  static Future<StaffHomeResonseModel> StaffGetHomePage() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,graphTemp);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {


      return staffHomeResonseModel(response.body);

    }
    return staffHomeResonseModel(response.body);
  }










  static Future<StaffGetTargetResponseModel> StaffGetTarget() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,staffGetTargt);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );
    return staffGetTargetResponseModel(response.body);
  }










  static Future<StaffTrainTempResponseModel> TrainData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,TrainTempEndPoint);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );
    return staffTrainTempResponseModel(response.body);
  }






  static Future<UploadProfileImageResponse> UploadProfileImage() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.http(baseUrl,uploadProfileImage);
    var request = http.MultipartRequest('POST', url);
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    request.headers.addAll(requestHeaders);
    request.files.add(await http.MultipartFile.fromPath('image', prefs.getString('profileImagePath')!));
    var response = await request.send();
    final respStr = await response.stream.bytesToString();
    return uploadProfileImageResponse(respStr);

  }

  static Future<UserProfileDataResponse> getCurrentUserData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("currentSession"+prefs.getString('currentSession')!);
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,getCurrentUserDataEndPoint);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );
    return userProfileDataResponse(response.body);
  }
  static Future<StaffGetAdminResonse> getCurrentAdminData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("currentSession"+prefs.getString('currentSession')!);
    Map<String, String> requestHeaders = {
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,getAdminEndPoint);
    var response = await client.get
      (     url,
      headers: requestHeaders,
    );
    return staffGetAdminResonse(response.body);
  }



  static Future<UpdateProfileResponse> UpdateProfile(UpdateProfileRequest model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      // prefs.setString('currentUserPublicId', temp_publicId!),
      'Cookie': prefs.getString('currentSession')!
    } ;
    var url = Uri.http(baseUrl,getCurrentUserDataEndPoint);
    var response = await client.post
      (
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return updateProfileResponse(response.body);
  }

  static Future<RegisterResponseModel> register(RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    };

    var url = Uri.http(baseUrl,registerEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    var Cookie = response.headers['set-cookie']??"email exits";
    print("I,m here");
    if(Cookie != "email exits"){
      print("Cookie             "+Cookie!);
      final endIndex = Cookie?.indexOf(";", 0);
      var session = Cookie?.substring(0,endIndex);
      print("session             "+session!);

      print("headerss        ");
      print(response.headers);
      print("end of headerss        ");
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currentSession', session!);
    }

    print(response.headers);
   //  var Cookie = response.headers['set-cookie'];
   //
   //
   //  print("I,m here");
   // // print("Cookie             "+Cookie!);
   //  final endIndex = Cookie?.indexOf(";", 0);
   //  var session = Cookie?.substring(0,endIndex);
   //  // Retrieve the session ID from the response cookie
   //
   //
   //  print("session             "+session!);
   //
   //  print("headerss        ");
   //  print(response.headers);
   //  print("end of headerss        ");
   //  SharedPreferences prefs = await SharedPreferences.getInstance();
   //  prefs.setString('currentSession', session!);
   //  String sessionId = response.headers['set-cookie']!.split(';')[0].split('=')[1];
   //  prefs.setString('sessionId', sessionId!);



    return registerResponseModel(response.body);
  }

  static Future<CalculateCarbonResponseModel> calculateCarbon(CalculateCarbonRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("reached hereeeeee");
    print("current cookie is    "+prefs.getString('currentSession')! );
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie':  prefs.getString('currentSession')!

    } ;

    var url = Uri.http(baseUrl,carbonCalcEndPoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return calculateCarbonResponseModel(response.body);
  }

  static Future<PredictionResponseModel> prediction(PredectionRequestModel model) async {

    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;

    var url = Uri.http(baseUrl,predictionEndPoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return predictionResponseModel(response.body);
  }






  static Future<LoginWithRememberMeResponseModel> loginWithRememberMe(LoginWithRememberMeRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;

    var url = Uri.http(baseUrl,loginEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return loginWithRememberMeResponseModel(response.body);
  }

  static Future<RememberMeResponseModel> rememberMe(RememberMeRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;

    var url = Uri.http(baseUrl,rememberMeEndpoint);
    var response = await client.post
      (
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    return rememberMeResponseModel(response.body);
  }

  static Future<ForgetPasswordResponseModel> forgetPassword(ForgetPasswordRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,forgetPasswordEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
    // print(response.headers['set-cookie']);


    // var Cookie = response.headers['set-cookie'];
    //
    // // final endIndex = Cookie?.indexOf(" ", 0);
    // // var session = Cookie?.substring(0,endIndex);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('currentSession', Cookie!);
    //
    // print(Cookie);
    var Cookie = response.headers['set-cookie']??"null";
    print("I,m in forget password");
    print("Cookie in forget password         "+Cookie!);
    if(Cookie != "null"){
      final endIndex = Cookie?.indexOf(";", 0);
      var session = Cookie?.substring(0,endIndex);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currentSession', session!);
      // String sessionId = response.headers['set-cookie']!.split(';')[0].split('=')[1];
      // prefs.setString('sessionId', sessionId!);

    }


    return forgetPasswordResponseModel(response.body);

  }

  static Future<VerifyResponseModel> verify(VerifyRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie':  prefs.getString('currentSession')!
    } ;

    var url = Uri.http(baseUrl,verifyOTPEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
    //  print("passed cookie : "+response.headers['Cookie']!);
    var Cookie = response.headers['set-cookie']??"null";
    print("I,m in verify");
    print("Cookie in verify         "+Cookie!);
    if(Cookie != "null"){
      final endIndex = Cookie?.indexOf(";", 0);
      var session = Cookie?.substring(0,endIndex);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currentSession', session!);
      // String sessionId = response.headers['set-cookie']!.split(';')[0].split('=')[1];
      // prefs.setString('sessionId', sessionId!);

    }
    return verifyResponseModel(response.body);
  }

  static Future<ResetPasswordResponseModel> resetPassword(ResetPasswordRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie':  prefs.getString('currentSession')!
    } ;

    var url = Uri.http(baseUrl,resetPasswordEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
    //  print("passed cookie : "+response.headers['Cookie']!);
    var Cookie = response.headers['set-cookie']??"null";
    print("I,m in reset password");
    print("Cookie in reset password        "+Cookie!);
    if(Cookie != "null"){
      final endIndex = Cookie?.indexOf(";", 0);
      var session = Cookie?.substring(0,endIndex);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currentSession', session!);
      // String sessionId = response.headers['set-cookie']!.split(';')[0].split('=')[1];
      // prefs.setString('sessionId', sessionId!);
      // prefs.setString('sessionId', sessionId!);

    }

    return resetPasswordResponseModel(response.body);
  }

  const APIService({Key? key}) : super(key: key);

  @override
  State<APIService> createState() => _APIServiceState();
}

class _APIServiceState extends State<APIService> {
  static var client = http.Client();
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
    flutterWebViewPlugin.onUrlChanged.listen((String url) {
      if (url.contains('http://your-api-endpoint.com')) {
        // Handle response from API
        String response = url.split('response=')[1];
        flutterWebViewPlugin.close();
        // Show response as a webpage in WebView
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(title: Text('API Response')),
            body: WebviewScaffold(
              url: 'data:text/html;charset=utf-8,' + response,
              withJavascript: true,
            ),
          ),
        ));
      }
    });
  }
   Future<void> googleLogin() async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(urlForGoogleLogin,googleLoginEndpoint);
    var response = await client.get
      (     url,
      // headers: requestHeaders,
      //body: jsonEncode(model.toJson()),

    );

    print("response body ");
    print("                                       ");
    print(response.body);
    print("                                       ");
    print("response body end");
    final document = parse(response.body);
    final redirectUrl = document.querySelector('a')?.attributes['href'];
    print("redirect url");
    print(redirectUrl);
    // print("                                                           ");
    // print("response headers");
    //
    // print(response.headers);
    // print("--------------------------------------------------------");
    // print("                                                           ");
    // return googleResponseModel(response.body);
    flutterWebViewPlugin.launch(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
