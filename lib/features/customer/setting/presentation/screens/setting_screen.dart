import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.45),
          child: Text(
            'User Name',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: context.screenWidth > 600
                    ? context.mediumFontSize
                    : context.mediumFontSize),
          ),
        ),
      ),
      child: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _buildListTile('Account Details', ImageConstants.settingCustomerIcon,
              ColorConstants.purpleAppColor, () {
            context.push(RouterConstants.accountDetailsScreen);
          }),
          SizedBox(
            height: 10,
          ),
          _buildListTile('Payment Cards', ImageConstants.cardIcon,
              ColorConstants.purpleAppColor, () {}),
          SizedBox(
            height: 10,
          ),
          _buildListTile('Edit Location', ImageConstants.mapMarkerSvgIcon,
              ColorConstants.purpleAppColor, () {}),
          SizedBox(
            height: 10,
          ),
          _buildListTile('Help Center', ImageConstants.helpIcon,
              ColorConstants.purpleAppColor, () {}),
          SizedBox(
            height: 10,
          ),
          _buildListTile('Terms and conditions', ImageConstants.termsIcon,
              ColorConstants.purpleAppColor, () {}),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              color: Colors.grey.withOpacity(0.01),
              child: CupertinoListTile(
                  leading: SvgPicture.asset(
                    ImageConstants.preferencesIcon,
                    color: ColorConstants.purpleAppColor,
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Favorites",
                        style: const TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "comming soon :)",
                        style: const TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: ColorConstants.greyTextColor),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      )),
    );
  }

  GestureDetector _buildListTile(
      String text, String icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          color: ColorConstants.backGroundAppColor,
          child: CupertinoListTile(
              leading: SvgPicture.asset(
                icon,
                color: color,
              ),
              title: Text(
                text,
                style: const TextStyle(
                    fontFamily: TextConstants.openSans,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
