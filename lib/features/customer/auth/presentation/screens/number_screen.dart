import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  String code = '';
  bool onEditing = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.45),
          child: Text(
            "Enter Phone Number",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: context.screenWidth > 600
                    ? context.mediumFontSize
                    : context.mediumFontSize),
          ),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.screenHeight > 600 ? 60 : 80,
                ),
                Center(
                  child: Container(
                    height: context.screenHeight > 600 ? 206 : 206,
                    width: context.screenWidth > 600 ? 450 : 353,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: CupertinoTextField.borderless(
                              placeholderStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.black,
                                  fontSize: 12),
                              prefix: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: SvgPicture.asset(
                                  ImageConstants.phoneIcon,
                                ),
                              ),
                              placeholder: "Phone Number",
                            ),
                          ),
                        ),
                        CupertinoTextFormFieldRow(
                          validator: (value) {
                            if (value!.isEmpty || value.length < 4) {
                              return 'Please enter a valid username.';
                            }
                            return null;
                          },
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.02,
                        ),
                        FittedBox(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Type the OTP",
                                    style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontFamily: TextConstants.openSans,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(
                                    height: context.screenHeight * 0.05,
                                  ),
                                  const Text(
                                    "Resend OTP in 2 minutes",
                                    style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontFamily: TextConstants.openSans,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight > 600 ? 300 : 600,
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Center(
                child: SizedBox(
                  width: context.screenWidth > 600 ? 350 : 300,
                  child: CupertinoButton(
                    color: ColorConstants.purpleAppColor,
                    borderRadius: BorderRadius.circular(25.0),
                    onPressed: () {
                      context.go(RouterConstants.logInDriverScreen);
                    },
                    child: const Text(
                      TextConstants.submitText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
