import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/presentation/controllers/cubit/payment_cubit.dart';
import 'package:laundry_app/features/customer/payment/presentation/controllers/text_editing_controller.dart';
import 'package:laundry_app/features/customer/payment/presentation/widgets/text_form_field_widget.dart';
import 'package:laundry_app/injection.dart';

class AddNewCardScreen extends StatelessWidget {
  final AddNewCardTextEditingController controller =
      Get.put(AddNewCardTextEditingController());

  AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return CupertinoPageScaffold(
    //     backgroundColor: ColorConstants.backGroundAppColor,
    //     navigationBar: CupertinoNavigationBar(
    //       border: const Border(),
    //       backgroundColor: ColorConstants.backGroundAppColor,
    //       automaticallyImplyLeading: true,
    //       middle: Padding(
    //         padding: EdgeInsets.only(right: context.screenWidth * 0.49),
    //         child: Text(
    //           TextConstants.addNewCardText,
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               fontSize:
    //                   context.screenWidth > 600 ? context.mediumFontSize : 20),
    //         ),
    //       ),
    //     ),
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              _buildCardIconsRow(),
              SizedBox(
                height: 70,
              ),
              CupertinoTextFormFieldWidget(
                  text: 'Card number',
                  placeHolderText: '0000 0000 0000 0000',
                  padding: EdgeInsets.only(left: 10, right: 10),
                  controller: controller.cardNumberController,
                  // validator: controller.cardNumberError.value
                  //     ? 'Invalid card number'
                  //     : null,
                  onChanged: controller.validateCardNumber),
              SizedBox(
                height: 30,
              ),
              CupertinoTextFormFieldWidget(
                  text: 'Holder Name',
                  placeHolderText: 'ex . Ahmed ..',
                  padding: EdgeInsets.only(left: 10, right: 10),
                  controller: controller.holderNameController,
                  // validator: controller.holderNameError.value
                  //     ? 'Invalid holder name'
                  //     : null,
                  onChanged: controller.validateHolderName),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: CupertinoTextFormFieldWidget(
                        text: 'Exp Date',
                        placeHolderText: 'MM   /   YY',
                        padding: EdgeInsets.only(left: 10, right: 10),
                        controller: controller.expDateController,
                        // validator: controller.expDateError.value
                        //     ? 'Invalid expiration date'
                        //     : null,
                        onChanged: controller.validateExpDate),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CupertinoTextFormFieldWidget(
                        text: 'Cvv Code',
                        placeHolderText: '000',
                        padding: EdgeInsets.only(left: 10, right: 10),
                        controller: controller.cvvCodeController,
                        // validator: controller.cvvCodeError,
                        onChanged: controller.validateCVVCode),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: SizedBox(
              width: context.screenWidth > 600 ? 350 : 300,
              child: BlocBuilder<PaymentCubit, PaymentState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () => CupertinoButton(
                      color: ColorConstants.purpleAppColor,
                      borderRadius: BorderRadius.circular(25.0),
                      onPressed: () {
                        //    if (controller.formKey.currentState!.validate()) {
                        //   context.read<AddNewDebitCardCubit>().emitAddNewDebit(
                        //       AddDebitCardParams(
                        //           cardNumber: int.parse(
                        //               controller.cardNumberController.text),
                        //           holderName:
                        //               controller.holderNameController.text,
                        //           cardExpDate: DateTime.parse(
                        //               controller.expDateController.text),
                        //           cvvCode: int.parse(
                        //               controller.cvvCodeController.text)));
                        //   }
                      },
                      child: Text(
                        TextConstants.addText,
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                    ),
                    orElse: () => CupertinoButton(
                      color: ColorConstants.purpleAppColor,
                      borderRadius: BorderRadius.circular(25.0),
                      onPressed: () {
                        // if (controller.formKey.currentState!.validate()) {}
                      },
                      child: Text(
                        TextConstants.addText,
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageHelper(url: ImageConstants.madaIcon, width: 34, height: 11),
        SizedBox(width: 5),
        ImageHelper(url: ImageConstants.visaIcon, width: 34, height: 11),
        SizedBox(width: 5),
        ImageHelper(url: ImageConstants.carrierIcon, width: 34, height: 11),
      ],
    );
  }
}
