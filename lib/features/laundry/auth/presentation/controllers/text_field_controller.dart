import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextFieldController extends GetxController {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  @override
  void onInit() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    phoneNumberController.clear();
    passwordController.clear();
    super.dispose();
  }
}
