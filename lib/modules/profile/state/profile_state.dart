import 'package:get/get.dart';

class ProfileState extends GetxController {
  bool gender = true;

  setGender(bool newGender) {
    gender = newGender;
    update();
  }
}
