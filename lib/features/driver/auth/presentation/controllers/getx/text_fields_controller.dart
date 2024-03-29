import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
///TODO:make it more abstraction
// class SignUpTextEditingController extends GetxController {
//   late TextEditingController fullNameController;
//   late TextEditingController emailController;
//   late TextEditingController passwordController;
//   late TextEditingController confirmPasswordController;

//   @override
//   void onInit() {
//     super.onInit();
//     confirmPasswordController = TextEditingController();
//     passwordController = TextEditingController();
//     emailController = TextEditingController();
//     fullNameController = TextEditingController();
//   }

//   @override
//   void onClose() {
//     confirmPasswordController.dispose();
//     passwordController.dispose();
//     emailController.dispose();
//     fullNameController.dispose();

//     super.onClose();
//   }

//   @override
//   void dispose() {
//     confirmPasswordController.clear();
//     passwordController.clear();
//     emailController.clear();
//     fullNameController.clear();

//     super.dispose();
//   }

//   final confirmPasswordError = RxBool(false);
//   final passwordError = RxBool(false);
//   final emailError = RxBool(false);
//   final fullNameError = RxBool(false);

//   void validateName(String value) {
//     fullNameError.value = value.isEmpty;
//   }

//   void validateEmail(String value) {
//     emailError.value = value.isEmpty;
//   }

//   void validatePassword(String value) {
//     passwordError.value = value.isEmpty;
//   }

//   void validateconfirmPassword(String value) {
//     confirmPasswordError.value = value.isEmpty;
//   }
// }
