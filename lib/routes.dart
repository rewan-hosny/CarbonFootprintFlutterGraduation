//import 'dart:js';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/StaffHello/StaffHello.dart';
import 'package:graduation/screens/Staff_Login/Staff_login.dart';
import 'package:graduation/screens/Staff_Login2/Staff_Login2.dart';
import 'package:graduation/screens/Staff_Report_Regression/Staff_Report_Regression_screen.dart';
import 'package:graduation/screens/Staff_result_question/Staff_result_question.dart';
import 'package:graduation/screens/about/about_screen.dart';
import 'package:graduation/screens/advice_plants/advice_plants_screen.dart';
import 'package:graduation/screens/advice_waste/advice_waste_screen.dart';
import 'package:graduation/screens/advice_water/advice_water_screen.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/before_plants/before_plants_screen.dart';
import 'package:graduation/screens/before_regression/before_regression_screen.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/contact_us/contact_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/edit_profile/edit_profile_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/gps/gps.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/leader_board/leader_board_screen.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
//<<<<<<< HEAD
import 'package:graduation/screens/profile/profile_screen.dart';
//=======
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/plant2_page/plant2_screen.dart';
import 'package:graduation/screens/plant3_page/plant3_screen.dart';
//>>>>>>> master
import 'package:graduation/screens/questions/components/question_eight.dart';
import 'package:graduation/screens/questions/components/question_five.dart';
import 'package:graduation/screens/questions/components/question_four.dart';
import 'package:graduation/screens/questions/components/question_nine.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/screens/questions/components/question_seven.dart';
import 'package:graduation/screens/questions/components/question_six.dart';
import 'package:graduation/screens/questions/components/question_three.dart';
import 'package:graduation/screens/questions/components/question_two.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';
import 'package:graduation/screens/regression2_page/regression2_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/screens/staff_articles_screen/staff_articles.dart';
import 'package:graduation/screens/staff_before_questions/staff_before_questions_screen.dart';
import 'package:graduation/screens/staff_before_regression/staff_before_regression.dart';
import 'package:graduation/screens/staff_calculate_smart_lighting/staff_calculate_smart_lighting.dart';
import 'package:graduation/screens/staff_calculate_solar_panels/staff_calculate_solar_panels.dart';
import 'package:graduation/screens/staff_chooseDU_page/staff_chooseDU_page.dart';
import 'package:graduation/screens/staff_electricity_project/staff_electricity_screen.dart';
import 'package:graduation/screens/staff_leader_bord/staff_leader_bord_screen.dart';
import 'package:graduation/screens/staff_processing_file/staff_processing_file_screen.dart';
import 'package:graduation/screens/staff_projects/staff_projects_screen.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_five.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_four.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_six.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_three.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_two.dart';
import 'package:graduation/screens/staff_regression_page/staff_regression_screen.dart';
import 'package:graduation/screens/staff_result_target/staff_result_target_screen.dart';
import 'package:graduation/screens/staff_smart_lighting_result/staff_smart_lighting_result.dart';
import 'package:graduation/screens/staff_solar_panel_result/staff_solar_panel_result_screen.dart';
import 'package:graduation/screens/staff_stepAfterLogin/staff_stepAfterLogin.dart';

import 'package:graduation/screens/staff_step_to_do/staff_step_to_do.dart';
import 'package:graduation/screens/staff_target/staff_target_screen.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';
import 'package:graduation/screens/stuff_download/stuff_download_screen.dart';
import 'package:graduation/screens/stuff_home_page/stuff_home_page_screen.dart';
import 'package:graduation/screens/target_progress/target_progress_screen.dart';
import 'package:graduation/screens/test_open_camera/camera_screen.dart';
import 'package:graduation/screens/upload_photo/upload_photo_screen.dart';
import 'package:graduation/screens/user_regression/user_regression.dart';
import 'package:graduation/screens/web_page/web_page_screen.dart';

import 'package:graduation/screens/splash/splash_screen.dart';

import 'models/uni_calc_response_model.dart';
//XFile xFile;
final Map  <String, WidgetBuilder> routes = {

  StaffBeforeQuestionsScreen.routeName:((context) => StaffBeforeQuestionsScreen()),
  Regression1Screen.routeName:((context)=> Regression1Screen()),
  Regression2Screen.routeName:((context)=> Regression2Screen(dates: {},)),
  AboutScreen.routeName:((context)=> AboutScreen()),
  StuffRegressionScreen.routeName: (context) => StuffRegressionScreen(dates: {}),
  StaffProjectsScreen.routeName:((context) => StaffProjectsScreen()),
  ContactScreen.routeName:((context)=> ContactScreen()),
  StaffQuestionOne.routeName:((context) => StaffQuestionOne(answersData: {},)),
  StaffQuestionTwo.routeName:((context) => StaffQuestionTwo({})),
  StaffQuestionFour.routeName:((context) => StaffQuestionFour({})),
  StaffQuestionFive.routeName:((context) => StaffQuestionFive({})),
  StaffQuestionThree.routeName:((context) => StaffQuestionThree({})),
  StaffQuestionSix.routeName:((context) => StaffQuestionSix({})),
  StaffHello.routeName:((context)=> StaffHello()),
  TargetProgressScreen.routeName:((context) => TargetProgressScreen()),
  StaffTargetScreen.routeName:((context)=> StaffTargetScreen()),
  StuffHomePageScreen.routeName:((context) => StuffHomePageScreen()),
  StuffDownloadScreen.routeName:((context)=>StuffDownloadScreen()),
  StaffUploadScreen.routeName:((context)=>StaffUploadScreen()),
  StaffProcessingFileScreen.routeName:((context)=>StaffProcessingFileScreen()),
  StaffResultScreen.routeName:((context) => StaffResultScreen(answersData: {},largestValues: LargestValues(),)),
  StaffLogin.routeName:((context) => StaffLogin()),
  StaffLogin2.routeName:((context) => StaffLogin2()),
  HomeScreen.routeName:((context) => HomeScreen()),
  StaffChoosePage.routeName:((context) => StaffChoosePage()),
  StaffStepToDo.routeName:((context) => StaffStepToDo()),
  StaffStepAfterLogin.routeName:((context) => StaffStepAfterLogin()),
  StaffResultTargetScreen.routeName:((context) => StaffResultTargetScreen(data:{},)),
  SignUpScreen.routeName:((context) => SignUpScreen()),
  SignInScreen.routeName:((context) => SignInScreen()),
  OtpScreen.routeName:((context) => OtpScreen()),
  ForgetPasswordScreen.routeName:((context) => ForgetPasswordScreen()),
  CreateNewPasswordScreen.routeName:((context) => CreateNewPasswordScreen()),
  ProfileScreen.routeName:((context) => ProfileScreen(currentUserData: {},)),
  CompleteProfileScreen.routeName:((context) => CompleteProfileScreen(firstSignUpScreenData: {},)),
 // ResultScreen.routeName:((context)=>ResultScreen()),
  WebPageScreen.routeName:((context) => WebPageScreen()),
  //QuestionScreen.routeName:((context) => QuestionScreen()),
  BeforePlantsScreen.routeName:((context)=>BeforePlantsScreen()),
  StaffArticleScreen.routeName:((context) => StaffArticleScreen()),
  // UserRegression.routeName:((context) => UserRegression()),
  StaffElectricityScreen.routeName:((context)=> StaffElectricityScreen()),
  SplashScreen.routeName:((context) => SplashScreen()),
  IntroScreen.routeName:((context) => IntroScreen()),
  StaffCalculateSolarPanelsScreen.routeName:((context) => StaffCalculateSolarPanelsScreen()),
  StaffSolarPanelsResultScreen.routeName:((context) => StaffSolarPanelsResultScreen(data: {},)),
  StaffCalculateSmartLightingScreen.routeName:((context) => StaffCalculateSmartLightingScreen()),
  StaffSmartLightingResultScreen.routeName:((context) => StaffSmartLightingResultScreen(data:{},)),
  BeforeRegressionScreen.routeName:((context)=>BeforeRegressionScreen()),
  Gps.routeName:((context) => Gps()),
  ////
  StaffBeforeRegression.routeName:((context)=>StaffBeforeRegression()),
/////

  StaffLeaderBoard.routeName:((context)=>StaffLeaderBoard()),
  EditProfile.routeName:((context) => EditProfile(currentUserData: {},)),
  QuestionOne.routeName:((context) => QuestionOne()),
  UserRegressionScreen.routeName:((context) => UserRegressionScreen(dates: {})),
  StaffReportRgressionScreen.routeName:((context) => StaffReportRgressionScreen(dates: {})),
 // QuestionTwo.routeName:((context) => QuestionTwo()),
 //  QuestionThree.routeName:((context) => QuestionThree()),
 //  QuestionFour.routeName:((context) => QuestionFour()),
 //  QuestionFive.routeName:((context) => QuestionFive()),
 //  QuestionSix.routeName:((context) => QuestionSix()),
 //  QuestionSeven.routeName:((context) => QuestionSeven()),
 //  QuestionEight.routeName:((context) => QuestionEight()),
 //  QuestionNine.routeName:((context) => QuestionNine()),
  AdvicePlantsScreen.routeName:((context)=>AdvicePlantsScreen()),
  AdviceWasteScreen.routeName:((context)=>AdviceWasteScreen()),
  AdviceWaterScreen.routeName:((context)=>AdviceWaterScreen()),
  LeaderBoardScreen.routeName:((context) => LeaderBoardScreen()),

  HomePageScreen.routeName:((context) => HomePageScreen()),
  Plant1Screen.routeName:((context)=> Plant1Screen()),
  Plant2Screen.routeName:((context)=> Plant2Screen()),
 // Plant3Screen.routeName:((context)=> Plant3Screen()),
  ArticlesScreen.routeName:((context)=>ArticlesScreen()),
  CameraScreen.routeName:((context)=>CameraScreen()),

  //UploadPhotoScreen.routeName:((context)=>UploadPhotoScreen(xFile: ,)),



};