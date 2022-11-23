import 'package:get/get.dart';

class BiometricsAuthController extends GetxController{
  // INSTANT VARIABLES
  bool _biometricsCaptured = false;

  // GETTERS
  bool get biometricsCaptured => _biometricsCaptured;

  //SETTERS
  toggleBiometricsCaptured (){
    _biometricsCaptured = !_biometricsCaptured;
    update();
  }
}