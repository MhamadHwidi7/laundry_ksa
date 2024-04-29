import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';

class OnDemandOrderComponent extends StatelessWidget {
  const OnDemandOrderComponent({Key? key}) : super(key: key);

  static const List<String> steps = [
    'Submitted\n',
    'Picked-up\n(Tomorrow)',
    'Delivered\n(Next Monday)'
  ];

  final int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171,
      width: 383,
      child: Card(
        color: CupertinoColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "On-demand Order",
                style: TextStyle(
                    fontFamily: TextConstants.openSans,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.purpleAppColor),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: steps.length,
                  itemBuilder: (context, index) {
                    return _buildStep(steps[index], index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStep(String text, int index) {
    final isActive = index <= currentStep;
    final color = isActive ? ColorConstants.purpleAppColor : Colors.grey;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Center(
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontFamily: TextConstants.openSans,
                fontSize: 11,
              ),
            ),
          ),
          SizedBox(height: 6),
          CircleAvatar(
            radius: 16,
            backgroundColor: color,
          ),
        ],
      ),
    );
  }
}
