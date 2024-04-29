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

class ApplyBecomingDriverScreen extends StatelessWidget {
  const ApplyBecomingDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.26),
          child: Text(
            TextConstants.applyToBecomeADriverAppBarText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: context.screenWidth > 600
                    ? context.mediumFontSize
                    : context.mediumFontSize),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.screenHeight > 600 ? 100 : 120,
                ),
                Center(
                  child: Container(
                    height: context.screenHeight > 600 ? 277 : 277,
                    width: context.screenWidth > 600 ? 450 : 353,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.screenHeight * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: CupertinoTextField.borderless(
                            placeholderStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black,
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: SvgPicture.asset(
                                ImageConstants.userIcon,
                              ),
                            ),
                            placeholder: TextConstants.fullNameText,
                          ),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.03,
                        ),
                        Padding(
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
                        SizedBox(
                          height: context.screenHeight * 0.06,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors
                                          .grey,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Select your Preferred District(s)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              12, // Adjust the font size if needed
                                        ),
                                      ),
                                      Icon(Icons.arrow_drop_down,
                                          size: 16), // Icon for dropdown
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),

                            ///TODO:make it
                            CupertinoRadio(
                                value: true,
                                groupValue: false,
                                onChanged: (dd) {
                                  return;
                                }),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                  fontFamily: TextConstants.openSans,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: context.screenHeight > 600 ? 300 : 600,
                // ),
              ],
            ),
            SizedBox(
              width: context.screenWidth > 600 ? 350 : 300,
              child: CupertinoButton(
                color: ColorConstants.purpleAppColor,
                borderRadius: BorderRadius.circular(25.0),
                onPressed: () {
                  context.go(RouterConstants.logInDriverScreen);
                },
                child: Text(
                  TextConstants.submitText,
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
