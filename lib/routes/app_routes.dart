import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';
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

];