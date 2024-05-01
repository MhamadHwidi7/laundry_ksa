import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Thobe",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "4 SR",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.purpleAppColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
