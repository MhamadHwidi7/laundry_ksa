
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/customer/map/presentation/controller/radio_button_controller.dart';

class SetLocationSheetWidget extends StatelessWidget {
  final RadioButtonController radioButtonController =
      Get.put(RadioButtonController());

  SetLocationSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              TextConstants.deliveryLocationText,
              style: TextStyle(
                  fontFamily: TextConstants.openSans,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "....",
              style: TextStyle(
                  fontFamily: TextConstants.openSans,
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              TextConstants.addressDetailsText,
              style: TextStyle(
                  fontFamily: TextConstants.openSans,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  TextConstants.homeTypeText,
                  style: TextStyle(
                      fontFamily: TextConstants.openSans,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  width: 45,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Obx(() => CupertinoRadio(
                        value: true,
                        groupValue:
                            radioButtonController.apartmentSelectedFirst!.value
                                ? true
                                : null,
                        onChanged: (value) {
                          if (kDebugMode) {
                            print('Apartment selected: $value');
                          }
                          radioButtonController.selectApartmentFirst(value!);
                        },
                      )),
                ),
                const Text(
                  TextConstants.apartmentText,
                  style: TextStyle(
                    fontFamily: TextConstants.openSans,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Obx(() => CupertinoRadio(
                        value: true,
                        groupValue:
                            radioButtonController.villaSelectedFirst!.value
                                ? true
                                : null,
                        onChanged: (value) {
                          if (kDebugMode) {
                            print('Villa selected: $value');
                          }
                          radioButtonController.selectVillaFirst(value!);
                        },
                      )),
                ),
                const Text(
                  TextConstants.villaText,
                  style: TextStyle(
                    fontFamily: TextConstants.openSans,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            ///TODO:make it when complete the getxcontroller for the radio button
            _buildObxRadioToTextField(context),
            const SizedBox(
              height: 10,
            ),
            const Text(
              TextConstants.addressDetailsLocationText,
              style: TextStyle(
                  fontSize: 11,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildSaveButton(context),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Center _buildSaveButton(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.screenWidth > 600 ? 350 : 300,
        child: CupertinoButton(
          color: ColorConstants.purpleAppColor,
          borderRadius: BorderRadius.circular(25.0),
          onPressed: () {
            context.push(RouterConstants.customerHomeScreen);
          },
          child: const Text(
            TextConstants.saveText,
            style: TextStyle(color: CupertinoColors.white),
          ),
        ),
      ),
    );
  }

  Obx _buildObxRadioToTextField(BuildContext context) {
    return Obx(() {
      if (radioButtonController.apartmentSelectedFirst!.value == true) {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CupertinoTextField(
                placeholder: TextConstants.buildingNumberText,
                placeholderStyle: TextStyle(
                  color: ColorConstants.greyTextColor,
                  fontSize: 11,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: CupertinoTextField(
                placeholder: TextConstants.apartmentNumberText,
                placeholderStyle: TextStyle(
                  color: ColorConstants.greyTextColor,
                  fontSize: 11,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        );
      } else if (radioButtonController.villaSelectedFirst!.value == true) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: context.screenWidth * 0.4,
              child: const CupertinoTextField(
                placeholder: TextConstants.villaNumberText,
                placeholderStyle: TextStyle(
                  color: ColorConstants.greyTextColor,
                  fontSize: 11,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
