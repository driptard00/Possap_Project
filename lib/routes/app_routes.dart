import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';
import 'package:possap_project/screens/Intro/intro_screen.dart';

import '../screens/Auth/login_screen.dart';

List<GetPage> getPage = [
  GetPage(
    name: introScreen, 
    page: ()=> IntroScreen()
  ),

  GetPage(
    name: loginScreen, 
    page: ()=> LoginScreen()
  ),

];