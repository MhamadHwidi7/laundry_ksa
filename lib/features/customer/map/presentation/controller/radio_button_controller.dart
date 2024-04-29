import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@singleton
class RadioButtonController extends GetxController {
  RxBool? apartmentSelectedFirst = true.obs;
  RxBool? villaSelectedFirst = false.obs;

  void selectApartmentFirst(bool? value) {
    if (value == true) {
      apartmentSelectedFirst!.value = true;
      villaSelectedFirst!.value = false;
    } else {
      apartmentSelectedFirst!.value = false;
    }
  }

  void selectVillaFirst(bool? value) {
    if (value == true) {
      villaSelectedFirst!.value = true;
      apartmentSelectedFirst!.value = false;
    } else {
      villaSelectedFirst!.value = false;
    }
  }
}
