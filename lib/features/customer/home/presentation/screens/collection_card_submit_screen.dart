import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/core/helper/image_helper.dart';

class CollectionCardSubmit extends StatelessWidget {
  const CollectionCardSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          alignment: AlignmentDirectional.topStart,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 7.0,
                spreadRadius: -12.0,
                offset: Offset(
                  -6.0,
                  10.0,
                ),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Thobe",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "4 PT",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.purpleAppColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageHelper(
                      url: "assets/icons/forb.svg",
                      width: context.screenWidth * 0.02,
                      height: context.screenHeight * 0.02),
                  Text(
                    "2",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.purpleAppColor),
                  ),
                  ImageHelper(
                      url: "assets/icons/plus.svg",
                      width: context.screenWidth * 0.02,
                      height: context.screenHeight * 0.02),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
