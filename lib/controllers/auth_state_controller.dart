import 'package:get/get.dart';

class AuthStateController extends GetxController{
  // INSTANT VARIABLES
  bool _hidePassword = true;
  bool _isChecked = false;

  // GETTERS
  bool get hidePassword => _hidePassword;
  bool get isChecked => _isChecked;

  // SETTERS
  toggleHidePassword() {
    _hidePassword = !_hidePassword;
    update();
  } // TOGGLE PASSWORD

  updateIsChecked(value) {
    _isChecked = value;
    update();
  } // UPDATE CHECKBOX

  toggleIsChecked() {
    _isChecked = !_isChecked;
    update();
  } // TOGGLE CHECKBOX
}