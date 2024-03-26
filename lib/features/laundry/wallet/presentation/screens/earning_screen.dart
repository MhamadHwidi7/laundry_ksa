import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final bool isIpad = MediaQuery.of(context).size.width > 600;

    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: Border(),
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(
              right: isIpad
                  ? context.screenWidth * 0.7
                  : context.screenWidth * 0.4),
          child: Text(
            "Your Earnings",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isIpad ? 24 : 20, // Adjusted font size for iPad
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
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: isIpad ? 450 : 300, // Adjusted width for iPad
                        child: Card(
                          color: CupertinoColors.white,
                          margin: EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 4.0),
                                Text(
                                  '175',
                                  style: TextStyle(
                                      fontSize: isIpad
                                          ? 36
                                          : context
                                              .largeFontSize, // Adjusted font size for iPad
                                      color: CupertinoColors.black,
                                      fontFamily: TextConstants.openSans),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Total Subscribes',
                                  style: TextStyle(
                                      fontSize: isIpad
                                          ? 18
                                          : context
                                              .smallFontSize, // Adjusted font size for iPad
                                      color: ColorConstants.purpleAppColor,
                                      fontFamily: TextConstants.openSans,
                                      fontWeight: FontWeight.bold),
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareCard(
                      context,
                      'Last Week Income',
                      weekDate: '4 - 10 of Feb',
                      isIpad: isIpad,
                    ),
                  ),
                  Expanded(
                    child: _buildSquareCard2(context, 'Last Week Orders',
                        isIpad: isIpad),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareCard2(context, 'This Month Income',
                        isIpad: isIpad),
                  ),
                  Expanded(
                    child: _buildSquareCard2(context, 'This Month Orders',
                        isIpad: isIpad),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareCard2(context, 'Total Amount of Nulls',
                        isIpad: isIpad),
                  ),
                  Expanded(
                    child: _buildSquareCard2(
                        context, 'Total Subscriptions Nulls',
                        isIpad: isIpad),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildSquareCard(
    BuildContext context,
    String name, {
    String? weekDate,
    bool isIpad = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: isIpad ? 300 : 200, // Adjusted height for iPad
        width: isIpad ? 300 : 200, // Adjusted width for iPad
        child: Card(
          color: CupertinoColors.white,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                if (weekDate != null) Text(weekDate),
                SizedBox(height: isIpad ? 80.0 : 30.0),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '3923,2 SR',
                    style: TextStyle(
                        fontSize:
                            isIpad ? 36 : 30, // Adjusted font size for iPad
                        color: CupertinoColors.black,
                        fontFamily: TextConstants.openSans,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: isIpad
                            ? 20
                            : context
                                .mediumFontSize, // Adjusted font size for iPad
                        color: ColorConstants.purpleAppColor,
                        fontFamily: TextConstants.openSans,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildSquareCard2(
    BuildContext context,
    String name, {
    bool isIpad = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: isIpad ? 300 : 200, // Adjusted height for iPad
        width: isIpad ? 300 : 200, // Adjusted width for iPad
        child: Card(
          color: CupertinoColors.white,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: isIpad
                        ? 80.0
                        : 50.0), // Adjusted SizedBox height for iPad
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '3923,2 SR',
                    style: TextStyle(
                        fontSize:
                            isIpad ? 36 : 30, // Adjusted font size for iPad
                        color: CupertinoColors.black,
                        fontFamily: TextConstants.openSans,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: isIpad
                            ? 20
                            : context
                                .mediumFontSize, // Adjusted font size for iPad
                        color: ColorConstants.purpleAppColor,
                        fontFamily: TextConstants.openSans,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
