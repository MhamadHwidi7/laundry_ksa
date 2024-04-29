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

class LogInDriverScreen extends StatelessWidget {
  const LogInDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.7),
          child: Text(
            TextConstants.loginAppBarText,
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
                  height: context.screenHeight > 600 ? 100 : 120,
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
                              ),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: CupertinoTextField.borderless(
                              prefix: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: SvgPicture.asset(
                                    ImageConstants.lockIcon,
                                  )),
                              placeholderStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.black),
                              placeholder: 'Password',
                              suffix: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: SvgPicture.asset(
                                  ImageConstants.eyeIcon,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: CupertinoButton(
                                    child: Text(
                                      TextConstants.forgetUrPasswordText,
                                      style: TextStyle(
                                        color: ColorConstants.greenAppColor,
                                        fontFamily: TextConstants.openSans,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      context.push(RouterConstants
                                          .forgetPasswordDriverScreen);
                                    })),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CupertinoButton(
                    child: Text(
                      TextConstants.applyToBecomeADriverButtonText,
                      style: TextStyle(
                        color: ColorConstants.greenAppColor,
                        fontFamily: TextConstants.openSans,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      context.push(RouterConstants.applyBecomingDriverScreen);
                    }),
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
                      context.pushReplacement(RouterConstants.driverHomeScreen);
                    },
                    child: Text(
                      TextConstants.loginButtonText,
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
