import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.49),
          child: Text(
            TextConstants.addNewCardText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:
                    context.screenWidth > 600 ? context.mediumFontSize : 20),
          ),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              _buildCardIconsRow(),
              SizedBox(
                height: context.screenHeight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Card Number",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              CupertinoTextField(),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Holder Name",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              CupertinoTextField(),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Expiry Date",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: context.screenWidth * 0.28),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "CVV Code",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(child: CupertinoTextField()),
                    SizedBox(
                      width: context.screenWidth * 0.03,
                    ),
                    Expanded(child: CupertinoTextField()),
                  ],
                ),
              ),
              // CupertinoTextFormFieldWidget(
              //     text: 'Card number',
              //     placeHolderText: '0000 0000 0000 0000',
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     controller: controller.cardNumberController,
              //     // validator: controller.cardNumberError.value
              //     //     ? 'Invalid card number'
              //     //     : null,
              //     onChanged: controller.validateCardNumber),
              // SizedBox(
              //   height: 30,
              // ),
              // CupertinoTextFormFieldWidget(
              //     text: 'Holder Name',
              //     placeHolderText: 'ex . Ahmed ..',
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     controller: controller.holderNameController,
              //     // validator: controller.holderNameError.value
              //     //     ? 'Invalid holder name'
              //     //     : null,
              //     onChanged: controller.validateHolderName),
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: CupertinoTextFormFieldWidget(
              //           text: 'Exp Date',
              //           placeHolderText: 'MM   /   YY',
              //           padding: EdgeInsets.only(left: 10, right: 10),
              //           controller: controller.expDateController,
              //           // validator: controller.expDateError.value
              //           //     ? 'Invalid expiration date'
              //           //     : null,
              //           onChanged: controller.validateExpDate),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Expanded(
              //       child: CupertinoTextFormFieldWidget(
              //           text: 'Cvv Code',
              //           placeHolderText: '000',
              //           padding: EdgeInsets.only(left: 10, right: 10),
              //           controller: controller.cvvCodeController,
              //           // validator: controller.cvvCodeError,
              //           onChanged: controller.validateCVVCode),
              //     ),
              //   ],
              // ),
            ],
          ),
          // Center(
          //   child: SizedBox(
          //     width: context.screenWidth > 600 ? 350 : 300,
          //     child: BlocBuilder<PaymentCubit, PaymentState>(
          //       builder: (context, state) {
          //         return state.maybeWhen(
          //           initial: () => CupertinoButton(
          //             color: ColorConstants.purpleAppColor,
          //             borderRadius: BorderRadius.circular(25.0),
          //             onPressed: () {
          //               //    if (controller.formKey.currentState!.validate()) {
          //               //   context.read<AddNewDebitCardCubit>().emitAddNewDebit(
          //               //       AddDebitCardParams(
          //               //           cardNumber: int.parse(
          //               //               controller.cardNumberController.text),
          //               //           holderName:
          //               //               controller.holderNameController.text,
          //               //           cardExpDate: DateTime.parse(
          //               //               controller.expDateController.text),
          //               //           cvvCode: int.parse(
          //               //               controller.cvvCodeController.text)));
          //               //   }
          //             },
          //             child: Text(
          //               TextConstants.addText,
          //               style: TextStyle(color: CupertinoColors.white),
          //             ),
          //           ),
          //           orElse: () => CupertinoButton(
          //             color: ColorConstants.purpleAppColor,
          //             borderRadius: BorderRadius.circular(25.0),
          //             onPressed: () {
          //               // if (controller.formKey.currentState!.validate()) {}
          //             },
          //             child: Text(
          //               TextConstants.addText,
          //               style: TextStyle(color: CupertinoColors.white),
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
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
