import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/laundry/home/presentation/widgets/order_card_list_view_widget.dart';
import 'package:laundry_app/features/laundry/home/presentation/widgets/text_header_list_card_widget.dart';

class HomeLaundryScreen extends StatelessWidget {
  const HomeLaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: const Border(),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () => context.push(RouterConstants.earningScreen),
            child: SvgPicture.asset(
              ImageConstants.earningsIcon,
            ),
          ),
        ),
        leading: const Text(
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

  const OrderCard({super.key, required this.name, required this.items});

  @override
  Widget build(BuildContext context) {
    List<String> k = [
      '3x Thob', '1x Shirt', '3x Thob', '1x Shirt',
      'Item 3',
      // Add more items as needed
    ];
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: ColorConstants.greenAppColor,
              width: 3,
            ),
          ),
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
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
                const TextHeaderListCardWidget(),
                Row(
                  children: [
                    OrderCardListView(
                      items: k,
                    ),
                    const SizedBox(
                      height: 150,
                      width: 2,
                      child: VerticalDivider(
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                    OrderCardListView(
                      items: k,
                    ),
                    const SizedBox(
                      height: 150,
                      width: 2,
                      child: VerticalDivider(
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                    OrderCardListView(
                      items: k,
                    ),
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
          child: SvgPicture.asset(
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
