import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/spacing_widgets.dart';

class OnDemandScreen extends StatefulWidget {
  const OnDemandScreen({super.key});

  @override
  State<OnDemandScreen> createState() => _OnDemandScreenState();
}

class _OnDemandScreenState extends State<OnDemandScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: Border(),
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
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              const Text(
                                "On-demand order",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: screenSize.width * 0.1,
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
                                    "Free Delivery",
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
                              "On-demand order serves you for one collection where you can submit the number of clothes you need and pay for that particular order. With a free delivery, extra fractional fees are applied per piece to cover our logistics."),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              const Text(
                                "Collection 1",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "(Select a suitable day for a pick-up)",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SH4(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                      color: ColorConstants.backGroundAppColor,
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
                          ],
                        ),
                        SH8(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
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
                                    fontSize: 12, fontWeight: FontWeight.bold),
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
                        SH32(),
                        Padding(
                          padding:
                              EdgeInsets.only(right: screenSize.width * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: screenSize.width * 0.42,
                                height: screenSize.height * 0.03,
                                decoration: BoxDecoration(
                                    color: ColorConstants.greyTextColor
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Submit your order content",
                                    style: TextStyle(
                                        color:
                                            ColorConstants.backGroundAppColor,
                                        fontSize: 11),
                                  ),
                                ),
                              ),
                              SW4(),
                              const Text(
                                "(Submitted)",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        SH4(),
                        const Text(
                          "(Edit)",
                          style: TextStyle(
                              fontSize: 10,
                              color: ColorConstants.purpleAppColor),
                        ),
                        SH12(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: screenSize.width * 0.1),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "2x Thobe (Both)",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "8",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: screenSize.width * 0.1),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1x Shmagh (Iron)",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: screenSize.width * 0.1),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery fees",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SH12(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: screenSize.width * 0.07),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Checkout",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "12 SR",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SH8(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: screenSize.width * 0.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Payment method",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
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
                                        fontSize: 11),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SH12(),
                        const Text(
                          "Free Delivery for orders above 40 SR",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
