import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class EarningScreen extends StatelessWidget {
  final String laundryId;
   const EarningScreen({Key? key, required this.laundryId});

  @override
  Widget build(BuildContext context) {
    final bool isIpad = MediaQuery.of(context).size.width > 600;

    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: const Border(),
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(
              right: isIpad
                  ? context.screenWidth * 0.7
                  : context.screenWidth * 0.2),
          child: Text(
            TextConstants.yourEarningsText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isIpad ? 24 : 20,
                fontFamily: TextConstants.openSans),
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      _fullCard(
                          context: context,
                          date: "4 - 17 Feb. (2 weeks)",
                          price: "1000 SR",
                          text: "Total Revenue",
                          width: context.width * 0.92),
                      SizedBox(
                        height: context.height * 0.7,
                        width: context.width,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _fullCard(
                                      context: context,
                                      date: "",
                                      price: "15",
                                      text: "Total Amount of Nulls",
                                      width: context.width * 0.45),
                                  SizedBox(
                                    width: context.width * 0.02,
                                  ),
                                  _fullCard(
                                      context: context,
                                      date: "",
                                      price: "20 H",
                                      text: "Total Amount of Nulls",
                                      width: context.width * 0.45),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fullCard(
      {required BuildContext context,
      required String date,
      required String price,
      required String text,
      required double width}) {
    final bool isIpad = MediaQuery.of(context).size.width > 600;
    return SizedBox(
      width: width,
      child: Card(
        color: CupertinoColors.white,
        margin: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                date,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4.0),
              Text(
                price,
                style: TextStyle(
                    fontSize: isIpad ? 36 : 40,
                    color: CupertinoColors.black,
                    fontFamily: TextConstants.openSans,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                    fontSize: isIpad ? 18 : context.smallFontSize,
                    color: ColorConstants.purpleAppColor,
                    fontFamily: TextConstants.openSans,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
