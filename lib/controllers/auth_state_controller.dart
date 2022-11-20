import 'package:get/get.dart';

class AuthStateController extends GetxController{
  bool _hidePassword = true;
  bool _isChecked = false;

  bool get hidePassword => _hidePassword;
  bool get isChecked => _isChecked;

  toggleHidePassword() {
    _hidePassword = !_hidePassword;
    update();
  }

  updateIsChecked(value) {
    _isChecked = value;
    update();
  }

  toggleIsChecked() {
    _isChecked = !_isChecked;
    update();
  }
}