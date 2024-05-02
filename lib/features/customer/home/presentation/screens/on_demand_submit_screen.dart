import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';
import 'package:laundry_app/core/helper/spacing_widgets.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/collection_card_screen.dart';
import 'package:laundry_app/features/customer/home/presentation/screens/collection_card_submit_screen.dart';

class OnDemandSubmitScreen extends StatefulWidget {
  const OnDemandSubmitScreen({super.key});

  @override
  State<OnDemandSubmitScreen> createState() => _OnDemandSubmitScreenState();
}

class _OnDemandSubmitScreenState extends State<OnDemandSubmitScreen> {
  int? onSelected;
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
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                ImageHelper(
                                  url: "assets/icons/arrow_back.svg",
                                  width: context.screenWidth * 0.02,
                                  height: context.screenHeight * 0.02,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.03,
                                ),
                                const Text(
                                  "Order Content",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.1,
                                ),
                                Expanded(
                                    child: CupertinoTextField(
                                  placeholder: "Search",
                                  prefix: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide())),
                                )),
                                // Container(
                                //   width: screenSize.width * 0.2,
                                //   height: screenSize.height * 0.03,
                                //   decoration: BoxDecoration(
                                //       color: ColorConstants.purpleAppColor,
                                //       borderRadius: BorderRadius.circular(20)),
                                //   child: const Center(
                                //     child: Text(
                                //       textAlign: TextAlign.center,
                                //       "1 Collection",
                                //       style: TextStyle(
                                //           color:
                                //               ColorConstants.backGroundAppColor,
                                //           fontSize: 11),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          GridView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              shrinkWrap: true,
                              itemCount: 15,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 18,
                                childAspectRatio: 1 / 0.8,
                              ),
                              itemBuilder: (context, index) {
                                return CollectionCardSubmit();
                              }),
                          Divider(
                            thickness: 2,
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
