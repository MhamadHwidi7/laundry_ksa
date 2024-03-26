import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class HomeLaundryScreen extends StatelessWidget {
  const HomeLaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: Border(),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () => context.push(RouterConstants.earningScreen),
            child: Image.asset(
              ImageConstants.earningsIcon,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        leading: Text(
          "Today's Order",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: TextConstants.openSans),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OrderCard(
                name: 'Ahmad Khalil',
                items: ['3x Thob', '2x Shumagh'],
              ),
              OrderCard(
                name: 'Ali Hasan',
                items: ['3x Shirt', '2x Pants'],
              ),
              OrderCard(
                name: 'Tahin Ziyada',
                items: ['3x Thob', '1x Shirt'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String name;
  final List<String> items;

  const OrderCard({Key? key, required this.name, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: ColorConstants.greenAppColor,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: context.screenHeight > 600
                          ? context.smallFontSize
                          : context.mediumFontSize,
                      fontFamily: TextConstants.openSans),
                ),
                SizedBox(
                    height: context.screenHeight > 600
                        ? 10
                        : context.screenHeight * 0.01),
                Text(
                  '6PM - 9PM',
                  style: TextStyle(
                      fontSize: context.smallFontSize,
                      color: CupertinoColors.black,
                      fontFamily: TextConstants.openSans),
                ),
                SizedBox(
                  height: context.screenHeight > 600
                      ? 20
                      : context.screenHeight * 0.02,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: context.screenWidth > 600
                              ? 50
                              : context.screenWidth * 0.1),
                      child: Text(
                        TextConstants.laundryAndIronText,
                        style: TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          right: context.screenWidth > 600
                              ? 80
                              : context.screenWidth * 0.1),
                      child: Text(
                        TextConstants.ironText,
                        style: TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.screenHeight > 600
                      ? 20
                      : context.screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.screenWidth * 0.03,
                              vertical: context.screenHeight * 0.005),
                          child: Text("3 x thoab"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.screenWidth * 0.03,
                              vertical: context.screenHeight * 0.005),
                          child: Text("3 x thoab"),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: context.screenWidth * 0.08),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.screenWidth * 0.03,
                                vertical: context.screenHeight * 0.005),
                            child: Text("3 x thoasss"),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.screenWidth * 0.03,
                                vertical: context.screenHeight * 0.005),
                            child: Text("2 x thoa"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: context.screenHeight > 600
                      ? context.screenHeight * 0.05
                      : context.screenHeight * 0.1,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: context.getImagePositionForScreen.left,
          bottom: context.getImagePositionForScreen.bottom,
          child: Image.asset(
            ImageConstants.checkCircleIcon,
            color: ColorConstants.greenAppColor,
            width:
                context.screenWidth > 600 ? 60 : context.getIconSizeForScreen,
            height:
                context.screenWidth > 600 ? 80 : context.getIconSizeForScreen,
          ),
        ),
      ],
    );
  }
}
