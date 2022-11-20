import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';
import 'package:possap_project/screens/Fingerprint%20Screens/capture_fingerprint.dart';
import 'package:possap_project/screens/Intro/intro_screen.dart';

import '../screens/Auth/login_screen.dart';

List<GetPage> getPage = [

  // ============== APP ROUTES ==============

  // INTRO ROUTE
  GetPage(
    name: introScreen, 
    page: ()=> IntroScreen()
  ),

  // AUTH ROUTES
  GetPage(
    name: loginScreen, 
    page: ()=> LoginScreen() // LOGIN ROUTE
  ),

  // FINGERPRINT AUTH SCREENS
  GetPage(
    name: captureFingerPrint, 
    page: ()=> CaptureFingerPrint() // CAPTURE FINGER PAGE ROUTE
  ),

  // GetPage(
  //   name: rightThumbAuth, 
  //   page: ()=> RightThumbAuth() // RIGHT THUMB AUTH PAGE ROUTE
  // ),

  // GetPage(
  //   name: rightIndexAuth, 
  //   page: ()=> RightIndexAuth() // RIGHT INDEX PAGE ROUTE
  // ),

  // GetPage(
  //   name: leftThumbAuth, 
  //   page: ()=> LeftThumbAuth() // LEFT THUMB AUTH PAGE ROUTE
  // ),

  // GetPage(
  //   name: submittedSuccessful, 
  //   page: ()=> SubmittedSuccessful() // SUBMITTED SUCCESSFUL
  // ),

];