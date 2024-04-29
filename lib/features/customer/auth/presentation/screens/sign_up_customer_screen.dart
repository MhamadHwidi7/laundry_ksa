import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/customer/auth/presentation/widgets/cupertino_text_field_widget.dart';

class SignUpCustomerScreen extends StatelessWidget {
  const SignUpCustomerScreen({super.key});

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
            TextConstants.signUpAppBarText,
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
                  height: context.screenHeight > 600 ? 60 : 120,
                ),
                Center(
                  child: Container(
                    height: context.screenHeight > 600 ? 430 : 540,
                    width: context.screenWidth > 600 ? 450 : 353,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 30, left: 8.0, right: 8, bottom: 10),
                          child: CupertinoTextFieldWidget(
                            heightPrefixIcon: 25,
                            widthPrefixIcon: 25,
                            placeHolderName: TextConstants.fullNameText,
                            prefixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNamePrefixIcon: ImageConstants.userIcon,
                          ),
                          //  CupertinoTextField.borderless(
                          //   placeholderStyle: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 12,
                          //     color: CupertinoColors.black,
                          //   ),
                          //   prefix: Padding(
                          //     padding: EdgeInsets.only(left: 10, right: 10),
                          //     child: SvgPicture.asset(
                          //       ImageConstants.userIcon,
                          //     ),
                          //   ),
                          //   placeholder: ,
                          // ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 7.0, right: 8, bottom: 10),
                          child: CupertinoTextFieldWidget(
                            heightPrefixIcon: 19,
                            widthPrefixIcon: 25,
                            placeHolderName: TextConstants.emailText,
                            prefixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNamePrefixIcon: ImageConstants.emailIcon,
                          ),

                          // CupertinoTextField.borderless(
                          //   placeholderStyle: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 12,
                          //     color: CupertinoColors.black,
                          //   ),
                          //   prefix: Padding(
                          //     padding: EdgeInsets.only(left: 10, right: 10),
                          //     child: SvgPicture.asset(
                          //       ImageConstants.emailIcon,
                          //     ),
                          //   ),
                          //   placeholder: TextConstants.emailText,
                          // ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 8.0, right: 8, bottom: 10),
                          child: CupertinoTextFieldWidget(
                            heightPrefixIcon: 25,
                            widthPrefixIcon: 25,
                            placeHolderName: 'Password',
                            prefixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNamePrefixIcon: ImageConstants.lockIcon,
                            suffixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNameSuffixIcon: ImageConstants.eyeIcon,
                          ),

                          // CupertinoTextField.borderless(
                          //   prefix: Padding(
                          //       padding: EdgeInsets.only(left: 10, right: 10),
                          //       child: SvgPicture.asset(
                          //         ImageConstants.lockIcon,
                          //       )),
                          //   placeholderStyle: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 12,
                          //       color: CupertinoColors.black),
                          //   placeholder: 'Password',
                          //   suffix: Padding(
                          //     padding: EdgeInsets.only(left: 10, right: 10),
                          //     child: SvgPicture.asset(
                          //       ImageConstants.eyeIcon,
                          //     ),
                          //   ),
                          // ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 8.0, right: 8, bottom: 10),
                          child: CupertinoTextFieldWidget(
                            heightPrefixIcon: 25,
                            widthPrefixIcon: 25,
                            placeHolderName: 'Confirm Password',
                            prefixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNamePrefixIcon: ImageConstants.checkCircleIcon,
                            suffixPadding: EdgeInsets.only(left: 10, right: 10),
                            assetNameSuffixIcon: ImageConstants.eyeIcon,
                          ),

                          // CupertinoTextField.borderless(
                          //   prefix: Padding(
                          //       padding: EdgeInsets.only(left: 10, right: 10),
                          //       child: SvgPicture.asset(
                          //         width: 25,
                          //         height: 25,
                          //         ImageConstants.checkCircleIcon,
                          //         color: CupertinoColors.black,
                          //       )),
                          //   placeholderStyle: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 12,
                          //       color: CupertinoColors.black),
                          //   placeholder: 'Confirm Password',
                          //   suffix: Padding(
                          //     padding: EdgeInsets.only(left: 10, right: 10),
                          //     child: SvgPicture.asset(
                          //       ImageConstants.eyeIcon,
                          //     ),
                          //   ),
                          // ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "or Login using",
                              style: TextStyle(
                                  fontFamily: TextConstants.openSans,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CupertinoButton(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(150)),
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Container(
                              width: 52,
                              height: 52,
                              decoration: const BoxDecoration(
                                  color: ColorConstants.backGroundAppColor,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                  ImageConstants.googleIcon,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.screenHeight > 900 ? 190 : 130,
            ),
            Text(
              "By signing up, you're accepting",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: TextConstants.openSans,
                  fontSize: 12,
                  color: CupertinoColors.black),
            ),
            Text(
              "terms & conditions",
              style: TextStyle(
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: ColorConstants.greenAppColor),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: context.screenWidth > 600 ? 350 : 300,
              child: CupertinoButton(
                color: ColorConstants.purpleAppColor,
                borderRadius: BorderRadius.circular(25.0),
                onPressed: () {
                  context.pushReplacement(RouterConstants.setLocationScreen);
                },
                child: Text(
                  TextConstants.signUpButtonText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
