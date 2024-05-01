import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/collection_card_screen.dart';

class PriceListScreen extends StatefulWidget {
  const PriceListScreen({super.key});

  @override
  State<PriceListScreen> createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.62),
          child: Text(
            "Price List",
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.09),
                    child: Row(
                      children: [
                        Container(
                          width: screenSize.width * 0.25,
                          height: screenSize.height * 0.04,
                          decoration: BoxDecoration(
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                  spreadRadius: -12.0,
                                  offset: Offset(
                                    -6.0,
                                    10.0,
                                  ),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Clean & Iron",
                              style: TextStyle(
                                  color: ColorConstants.greenAppColor,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        Container(
                          width: screenSize.width * 0.25,
                          height: screenSize.height * 0.04,
                          decoration: BoxDecoration(
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                  spreadRadius: -12.0,
                                  offset: Offset(
                                    -6.0,
                                    10.0,
                                  ),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Clean",
                              style: TextStyle(
                                  color: ColorConstants.greenAppColor,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        Container(
                          width: screenSize.width * 0.25,
                          height: screenSize.height * 0.04,
                          decoration: BoxDecoration(
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                  spreadRadius: -12.0,
                                  offset: Offset(
                                    -6.0,
                                    10.0,
                                  ),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Iron",
                              style: TextStyle(
                                  color: ColorConstants.greenAppColor,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 15,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 18,
                        childAspectRatio: 1 / 1,
                      ),
                      itemBuilder: (context, index) {
                        return const CollectionCard();
                      }
                      //  },
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
