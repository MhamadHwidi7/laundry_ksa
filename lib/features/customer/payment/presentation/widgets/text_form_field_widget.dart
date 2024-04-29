import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class CupertinoTextFormFieldWidget extends StatelessWidget {
  final String text;
  final String placeHolderText;
  final EdgeInsets padding;
  final Function(String) onChanged;
  final TextEditingController controller;
  const CupertinoTextFormFieldWidget({
    super.key,
    required this.text,
    required this.placeHolderText,
    required this.padding,
    required this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: TextConstants.openSans,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: CupertinoColors.black),
          ),
        ),
        Padding(
          padding: padding,
          child: SizedBox(
            height: context.screenHeight * 0.04,
            child: CupertinoFormRow(
              child: CupertinoTextFormFieldRow(
                // validator: validator,
                onChanged: onChanged,
                controller: controller,
                placeholder: placeHolderText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
