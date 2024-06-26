import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/helper/image_helper.dart';

class SubscriptionsWidget extends StatelessWidget {
  final String points;

  const SubscriptionsWidget({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: screenSize.height * 0.25,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.06,
              vertical: screenSize.height * 0.02,
            ),
            child: FittedBox(
              child: ImageHelper(
                url: "assets/images/laundry.png",
                width: screenSize.width,
                height: screenSize.height * 0.2,
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.1,
            bottom: screenSize.height * 0.12,
            child: Text(
              points,
              style: const TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: ColorConstants.backGroundAppColor,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: screenSize.width * 0.6,
            child: Text(
              "Press to Subscribe",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ColorConstants.backGroundAppColor,
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.25,
            bottom: screenSize.height * 0.125,
            child: const Text(
              "Points",
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: ColorConstants.backGroundAppColor,
              ),
            ),
          ),
          Positioned(
            bottom: 28,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.06,
                vertical: screenSize.height * 0.02,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: ImageHelper(
                  url: "assets/icons/Rectanglesvg.svg",
                  width: screenSize.width,
                  height: screenSize.height * 0.06,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenSize.height * 0.07,
            left: screenSize.width * 0.1,
            child: Container(
              width: screenSize.width * 0.2,
              height: screenSize.height * 0.02,
              decoration: BoxDecoration(
                color: ColorConstants.backGroundAppColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "1 Collection",
                  style: TextStyle(
                    color: ColorConstants.purpleAppColor,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.31,
            bottom: screenSize.height * 0.065,
            child: const Text(
              "Pick whatever cloth you want and whatever\n service you need within 1 week",
              style: TextStyle(
                fontSize: 10,
                color: ColorConstants.backGroundAppColor,
              ),
            ),
          ),
          Positioned(
            right: screenSize.width * 0.1,
            bottom: screenSize.height * 0.065,
            child: Text(
              "$points SR",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorConstants.backGroundAppColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
