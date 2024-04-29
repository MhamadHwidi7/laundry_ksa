import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class TextFieldController extends GetxController {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  RxBool isPasswordVisible = false.obs; // Observable for password visibility
  final Rx<String?> phoneNumberError = Rx<String?>(null);
  final Rx<String?> passwordError = Rx<String?>(null);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      phoneNumberError.value = 'Phone number is required';
      return phoneNumberError.value;
    } else if (value.length != 10) {
      phoneNumberError.value = 'Phone number must be 10 digits';
      return phoneNumberError.value;
    }
    phoneNumberError.value = null;
    return null;
  }

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    passwordError.value = 'Password is required';
    return passwordError.value;
  } else if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$').hasMatch(value)) {
    passwordError.value = 'Password must contain at least one lowercase letter, one uppercase letter, and one number.';
    return passwordError.value;
  }
  passwordError.value = null;
  return null;
}

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
