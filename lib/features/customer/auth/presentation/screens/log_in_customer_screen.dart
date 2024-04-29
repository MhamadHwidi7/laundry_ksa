import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class LogInCustomerScreen extends StatelessWidget {
  const LogInCustomerScreen({super.key});

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
                fontSize:
                    context.screenWidth > 600 ? context.mediumFontSize : 20),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.screenHeight > 600 ? 100 : 120,
                ),
                Center(
                  child: Container(
                    height: context.screenHeight > 600 ? 327 : 327,
                    width: context.screenWidth > 600 ? 450 : 353,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 8.0, right: 8, bottom: 40),
                          child: CupertinoTextField.borderless(
                            placeholderStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: CupertinoColors.black,
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: SvgPicture.asset(
                                ImageConstants.emailIcon,
                              ),
                            ),
                            placeholder: TextConstants.emailText,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                          child: CupertinoTextField.borderless(
                            prefix: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: SvgPicture.asset(
                                  ImageConstants.lockIcon,
                                )),
                            placeholderStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                                      context.pushReplacement(RouterConstants
                                          .forgetPasswordCustomerScreen);
                                    })),
                          ],
                        ),
                        SizedBox(
                          width: context.screenWidth > 600 ? 350 : 300,
                          child: CupertinoButton(
                            color: ColorConstants.purpleAppColor,
                            borderRadius: BorderRadius.circular(25.0),
                            onPressed: () {
                              context.pushReplacement(
                                  RouterConstants.customerHomeScreen);
                            },
                            child: Text(
                              TextConstants.loginButtonText,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontFamily: TextConstants.openSans,
                                  fontSize: 11),
                            ),
                            CupertinoButton(
                              padding: EdgeInsets.only(right: 2),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontFamily: TextConstants.openSans,
                                    fontSize: 11),
                              ),
                              onPressed: () {
                                context.pushReplacement(
                                    RouterConstants.signUpCustomerScreen);
                              },
                              disabledColor: ColorConstants.greenAppColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
