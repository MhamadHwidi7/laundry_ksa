import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

///TODO:make it tomorrow
class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

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
            'Account Details',
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
        children: [_buildListTile(() {})],
      )),
    );
  }

  GestureDetector _buildListTile(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          height: 60,
          child: Card(
            color: ColorConstants.backGroundAppColor,
            child: CupertinoTextField.borderless(
              suffix: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  ImageConstants.editIcon,
                ),
              ),
              placeholder: "Full Name",
              placeholderStyle: TextStyle(
                  fontFamily: TextConstants.openSans,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: CupertinoColors.black),
            ),
          ),
        ),
      ),
    );
  }
}
