import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class AccomplishmentScreen extends StatelessWidget {
  const AccomplishmentScreen({super.key});

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
            TextConstants.yourAccomplishmentsText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isIpad ? 24 : 20,
                fontFamily: TextConstants.openSans),
          ),
        ),
      ),
      child: SafeArea(
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
                      height: context.height * 0.05,
                    ),
                    _fullCard(context, "4 - 17 Feb. (2 weeks)", "1000 SR",
                        "Total Revenue", context.width * 0.92),
                    _fullCard(context, "", "2", "Done Waves (Today)",
                        context.width * 0.92),
                    _fullCard(context, "", "3", "Done Waves (Yesterday)",
                        context.width * 0.92),
                    Row(
                      children: [
                        _fullCard(context, "", "15", "Done Waves",
                            context.width * 0.45),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        _fullCard(context, "", "20 H", "Spent Hours",
                            context.width * 0.45),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _fullCard(BuildContext context, String date, String price, String text,
      double width) {
    final bool isIpad = MediaQuery.of(context).size.width > 600;
    return SizedBox(
      width: width,
      child: Card(
        color: CupertinoColors.white,
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                date,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4.0),
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
