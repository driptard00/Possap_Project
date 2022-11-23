import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';
import 'package:possap_project/screens/Facial_Biometrics/Facial_Biometric_capture.dart';
import 'package:possap_project/screens/Facial_Biometrics/Facial_capture_info.dart';
import 'package:possap_project/screens/Fingerprint%20Screens/biometric_enrollment.dart';
import 'package:possap_project/screens/Intro/intro_screen.dart';

import '../screens/Auth/login_screen.dart';
import '../screens/Fingerprint Screens/left_index.dart';
import '../screens/Fingerprint Screens/left_thumb_auth.dart';
import '../screens/Fingerprint Screens/right_index.dart';
import '../screens/Fingerprint Screens/right_thumb_auth.dart';

List<GetPage> getPage = [

  // ============== APP ROUTES ==============

  // INTRO ROUTE
  GetPage(
    name: introScreen, 
    page: ()=> IntroScreen(),
    transition: Transition.cupertino
  ),

  // AUTH ROUTES
  GetPage(
    name: loginScreen, 
    page: ()=> LoginScreen(),
    transition: Transition.cupertino // LOGIN ROUTE
  ),

  // FINGERPRINT AUTH SCREENS
  GetPage(
    name: biometricEnrollment, 
    page: ()=> BiometricEnrollment(),
    transition: Transition.cupertino // CAPTURE FINGER PAGE ROUTE
  ),

  GetPage(
    name: rightThumbAuth, 
    page: ()=> RightThumbAuth(), // RIGHT THUMB AUTH PAGE ROUTE,
    transition: Transition.cupertino
  ),

  GetPage(
    name: rightIndexAuth, 
    page: ()=> RightIndexAuth(), // RIGHT INDEX PAGE ROUTE
    transition: Transition.cupertino
  ),

  GetPage(
    name: leftThumbAuth, 
    page: ()=> LeftThumbAuth(), // LEFT THUMB AUTH PAGE ROUTE
    transition: Transition.cupertino
  ),

  GetPage(
    name: leftIndexAuth, 
    page: ()=> LeftIndexAuth(), // LEFT THUMB AUTH PAGE ROUTE
    transition: Transition.cupertino
  ),

  // FACIAL BIOMETRIC AUTH
  GetPage(
    name: facialCaptureInfo, 
    page: ()=> FacialCaptureInfo(), // FACIAL CAPTURE INFO ROUTE
    transition: Transition.cupertino
  ),

  GetPage(
    name: facialBiometricCapture, 
    page: ()=> FacialBiometricCapture(), // FACIAL BIOMETRIC CAPTURE ROUTE
    transition: Transition.cupertino
  ),

];