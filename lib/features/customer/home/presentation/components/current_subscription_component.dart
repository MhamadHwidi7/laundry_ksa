import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/helper/image_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CurrentSubscriptionComponent extends StatelessWidget {
  const CurrentSubscriptionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171,
      width: 353,
      child: Card(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Current Subscription",
                          style: TextStyle(
                              fontFamily: TextConstants.openSans,
                              color: ColorConstants.purpleAppColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      Container(
                        width: 85,
                        height: 18,
                        decoration: BoxDecoration(
                          color: ColorConstants.purpleAppColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "2 Collection",
                            style: TextStyle(
                              color: ColorConstants.backGroundAppColor,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 71,
                        width: 146,
                        decoration: BoxDecoration(
                            color:
                                ColorConstants.greySubscriptionContainerColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1st Collection",
                                style: TextStyle(
                                    fontFamily: TextConstants.openSans,
                                    color: CupertinoColors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Next Wed. 6-9PM",
                                style: TextStyle(
                                    fontFamily: TextConstants.openSans,
                                    color: CupertinoColors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 28,
                                    width: 114,
                                    child: FittedBox(
                                      child: CupertinoButton(
                                        color: CupertinoColors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        onPressed: () {
                                          // context.go(RouterConstants.logInDriverScreen);
                                        },
                                        child: Text(
                                          "Submit Content",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  TextConstants.openSans,
                                              color: ColorConstants
                                                  .greyBlackColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        ColorConstants.backGroundAppColor,
                                    radius: 11,
                                    child: ImageHelper(
                                      url: ImageConstants.calendarIcon,
                                      width: 11,
                                      height: 11,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 71,
                        width: 146,
                        decoration: BoxDecoration(
                            color:
                                ColorConstants.greenSubscriptionContainerColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1st Collection",
                                style: TextStyle(
                                    fontFamily: TextConstants.openSans,
                                    color: CupertinoColors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Next Wed. 6-9PM",
                                style: TextStyle(
                                    fontFamily: TextConstants.openSans,
                                    color: CupertinoColors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 28,
                                    width: 114,
                                    child: FittedBox(
                                      child: CupertinoButton(
                                        color: CupertinoColors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        onPressed: () {
                                          // context.go(RouterConstants.logInDriverScreen);
                                        },
                                        child: Text(
                                          "Submit Content",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  TextConstants.openSans,
                                              color: ColorConstants
                                                  .purpleAppColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        ColorConstants.backGroundAppColor,
                                    radius: 11,
                                    child: ImageHelper(
                                      url: ImageConstants.calendarIcon,
                                      width: 11,
                                      height: 11,
                                      color: ColorConstants.purpleAppColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 10,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "49",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Points",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
