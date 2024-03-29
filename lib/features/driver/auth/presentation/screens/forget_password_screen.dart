import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
            TextConstants.forgetPasswordText,
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
                              placeholderStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.black,
                                  fontSize: 12),
                              prefix: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: SvgPicture.asset(
                                  ImageConstants.phoneIcon,
                                ),
                              ),
                              placeholder: TextConstants.phoneNumberText,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    TextConstants
                                        .containerBoxForgetPasswordText,
                                    style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontFamily: TextConstants.openSans,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    TextConstants.for24HoursText,
                                    style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontFamily: TextConstants.openSans,
                                      fontSize: 15,
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
                      context
                          .pushReplacement(RouterConstants.homeLaundryScreen);
                    },
                    child: Text(
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
