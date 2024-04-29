import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@singleton
class AddNewCardTextEditingController extends GetxController {
  late TextEditingController cardNumberController;
  late TextEditingController holderNameController;
  late TextEditingController expDateController;
  late TextEditingController cvvCodeController;
  // final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    cardNumberController = TextEditingController();
    holderNameController = TextEditingController();
    expDateController = TextEditingController();
    cvvCodeController = TextEditingController();
  }

  @override
  void onClose() {
    cardNumberController.dispose();
    holderNameController.dispose();
    expDateController.dispose();
    cvvCodeController.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    holderNameController.dispose();
    expDateController.dispose();
    cvvCodeController.dispose();
    super.dispose();
  }

  final cardNumberError = RxBool(false);
  final holderNameError = RxBool(false);
  final expDateError = RxBool(false);
  final cvvCodeError = RxBool(false);

  String? validateCardNumber(String? value) {
    if (value?.length != 12) {
      cardNumberError.value = true;
      return 'Invalid card number';
    } else {
      cardNumberError.value = false;
      return null;
    }
  }

  String? validateHolderName(String? value) {
    if (value!.length > 25) {
      holderNameError.value = true;
      return 'Invalid holder name';
    } else {
      holderNameError.value = false;
      return null;
    }
  }

  String? validateExpDate(String? value) {
    if (value?.length != 7) {
      expDateError.value = true;
      return 'Invalid expiration date';
    } else {
      // Split the value into month and year
      final List<String>? parts = value?.split('/');

      if (parts?.length != 2) {
        expDateError.value = true;
        return 'Invalid expiration date';
      }

      final String? monthString = parts?[0];
      final String? yearString = parts?[1];

      // Validate month
      final int? month = int.tryParse(monthString ?? '');
      if (month == null || month < 1 || month > 12) {
        expDateError.value = true;
        return 'Invalid expiration date';
      }

      // Validate year
      final int? year = int.tryParse(yearString ?? '');
      final int? currentYear =
          DateTime.now().year % 100; // Get last two digits of current year
      if (year == null || year < currentYear! || year > (currentYear + 30)) {
        // Assuming cards are valid for the next 30 years
        expDateError.value = true;
        return 'Invalid expiration date';
      }

      expDateError.value = false;
      return null;
    }
  }

  String? validateCVVCode(String? value) {
    if (value?.length != 3) {
      cvvCodeError.value = true;
      return 'Invalid CVV code';
    } else {
      cvvCodeError.value = false;
      return null;
    }
  }
}
