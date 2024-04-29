import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';
import 'package:laundry_app/core/helper/spacing_widgets.dart';

class SubscriptionDetailsScreen extends StatefulWidget {
  const SubscriptionDetailsScreen({super.key});

  @override
  State<SubscriptionDetailsScreen> createState() =>
      _SubscriptionDetailsScreenState();
}

class _SubscriptionDetailsScreenState extends State<SubscriptionDetailsScreen> {
  int? onSelected;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: Border(),
        middle: Text(
          "Subscription Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: TextConstants.openSans),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: context.screenWidth * 0.9,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                const Text(
                                  "19",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                ),
                                SW4(),
                                const Text(
                                  "Points",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.27,
                                ),
                                Container(
                                  width: screenSize.width * 0.2,
                                  height: screenSize.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: ColorConstants.purpleAppColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "1 Collection",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.backGroundAppColor,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                                "This subscription offers you to choose whatever cloth type you want and whatever service you need to be served in one collection within one week, all that with a free delivery!"),
                          ),
                          SizedBox(
                            height: context.screenHeight * 0.04,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                const Text(
                                  "Collection 1",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                SW4(),
                                const Text(
                                  "(Select a suitable day for a pick-up)",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SH8(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: const BoxDecoration(
                                      color: ColorConstants.purpleAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Sun",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.backGroundAppColor,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "M",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "T",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "W",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Th",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "F",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Sa",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.08,
                                  height: screenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Sun",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Delivery will be after one day of selected day",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          SH8(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                const Text(
                                  "Time Frame",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SW4(),
                                const Text(
                                  "(Select a time frame for pick-up and delivery)",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SH12(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  width: screenSize.width * 0.23,
                                  height: screenSize.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: ColorConstants.purpleAppColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "6 PM - 9 PM",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.backGroundAppColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SW8(),
                                Container(
                                  width: screenSize.width * 0.23,
                                  height: screenSize.height * 0.03,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.purpleAppColor),
                                      color: ColorConstants.backGroundAppColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "9 PM - 12 PM",
                                      style: TextStyle(
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SH24(),
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: onSelected,
                                  onChanged: (value) {
                                    onSelected = value;
                                  }),
                              Text("Submit Now for "),
                              const Text(
                                "Collection 1 ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("content"),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: onSelected,
                                  onChanged: (value) {
                                    onSelected = value;
                                  }),
                              const Expanded(
                                child: Text(
                                    "Submit Later (max. 24 hours before pick-up, otherwise collection will be shifted to next pick-up day)"),
                              ),
                            ],
                          ),
                          SH24(),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Checkout",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "19 SR",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SH8(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Payment method",
                                  style: TextStyle(),
                                ),
                                Container(
                                  width: screenSize.width * 0.15,
                                  height: screenSize.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: ColorConstants.purpleAppColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Add",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.backGroundAppColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 20,
                left: 19,
                child: ImageHelper(
                    url: "assets/images/Rectangle_top.png",
                    width: context.screenWidth * 0.9,
                    height: context.screenHeight * 0.01),
              )
            ],
          ),
        ),
      ),
    );
  }
}
