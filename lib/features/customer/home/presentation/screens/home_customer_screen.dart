import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';
import 'package:laundry_app/features/customer/home/presentation/widgets/subscription_widget.dart';

class HomeCustomerScreen extends StatefulWidget {
  const HomeCustomerScreen({super.key});

  @override
  State<HomeCustomerScreen> createState() => _HomeCustomerScreenState();
}

class _HomeCustomerScreenState extends State<HomeCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: const Border(),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 11),
          child: GestureDetector(
              onTap: () => context.push(RouterConstants.settingScreen),
              child: ImageHelper(
                  url: ImageConstants.settingIcon,
                  width: screenSize.width * 0.05,
                  height: screenSize.height * 0.05)),
        ),
        leading: Row(
          children: [
            SizedBox(
              width: screenSize.width * 0.02,
            ),
            ImageHelper(
                url: ImageConstants.laundryIcon,
                width: screenSize.width * 0.05,
                height: screenSize.height * 0.05),
            SizedBox(
              width: screenSize.width * 0.02,
            ),
            const Text(
              "Laundry X",
              style: TextStyle(
                  color: ColorConstants.darkBlueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: TextConstants.openSans),
            ),
            SizedBox(
              width: screenSize.width * 0.05,
            ),
            Container(
              width: screenSize.width * 0.15,
              height: screenSize.height * 0.03,
              decoration: BoxDecoration(
                  color: ColorConstants.darkBlueColor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Change",
                  style: TextStyle(
                      color: ColorConstants.backGroundAppColor, fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.06,
                      vertical: screenSize.height * 0.03),
                  child: const Text(
                    "Prices",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.06,
                  ),
                  child: Row(
                    children: [
                      const Text("See all",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.purpleAppColor)),
                      SizedBox(
                        width: screenSize.width * 0.01,
                      ),
                      ImageHelper(
                          url: ImageConstants.arrowNextSeeAllIcon,
                          width: screenSize.width * 0.01,
                          height: screenSize.height * 0.01)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.03),
              child: SizedBox(
                height: 100,
                width: screenSize.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (_, index) {
                      return fullCard(
                        context: context,
                        date: "",
                        price: "",
                        text: "4 SR",
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.06,
                  vertical: screenSize.height * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Subscriptions",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.06,
              ),
              child: Row(
                children: [
                  Container(
                    width: screenSize.width * 0.15,
                    height: screenSize.height * 0.05,
                    decoration: BoxDecoration(
                        color: ColorConstants.purpleAppColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Weekly",
                        style: TextStyle(
                            color: ColorConstants.backGroundAppColor,
                            fontSize: 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.03,
                  ),
                  Container(
                    width: screenSize.width * 0.15,
                    height: screenSize.height * 0.05,
                    decoration: BoxDecoration(
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.black, blurRadius: 7.0,
                            spreadRadius: -14.0, //extend the shadow
                            offset: Offset(
                              -10, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Monthly",
                        style: TextStyle(
                            color: ColorConstants.purpleAppColor, fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.25,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const SubscriptionsWidget(points: "19");
                },
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.25,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const SubscriptionsWidget(points: "30");
                },
              ),
            ),
            ImageHelper(
                url: "assets/icons/add.svg",
                width: screenSize.width * 0.07,
                height: screenSize.height * 0.07)
          ],
        ),
      )),
    );
  }

  Widget fullCard({
    required BuildContext context,
    required String date,
    required String price,
    required String text,
  }) {
    final bool isIpad = MediaQuery.of(context).size.width > 600;
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        color: ColorConstants.backGroundAppColor,
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                date,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18, // Adjusted font size
                  color: CupertinoColors.black,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 12, // Adjusted font size
                  color: ColorConstants.purpleAppColor,
                  fontFamily: TextConstants.openSans,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
