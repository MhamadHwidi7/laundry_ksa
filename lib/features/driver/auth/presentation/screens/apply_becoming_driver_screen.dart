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
          padding: EdgeInsets.only(right: context.screenWidth * 0.17),
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
                                  ImageConstants.userIcon,
                                ),
                              ),
                              placeholder: TextConstants.fullNameText,
                            ),
                          ),
                        ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
//                             here make me this I want to make like a very small text and wrap it in anything to make border for it to make
// Select your Preferred District(s)
// and make on the right a icon to down which show I can click soon it and open pops-menu like this

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors
                                          .grey, // You can customize the border color
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
