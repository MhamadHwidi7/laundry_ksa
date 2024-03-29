import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class TextHeaderListCardWidget extends StatelessWidget {
  const TextHeaderListCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: context.screenWidth > 600 ? 20 : 20),
          child: const Text(
            TextConstants.laundryAndIronText,
            style: TextStyle(
                fontFamily: TextConstants.openSans,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: context.screenWidth > 600 ? 270 : 50,
        ),
        const Text(
          TextConstants.ironText,
          style: TextStyle(
              fontFamily: TextConstants.openSans, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: context.screenWidth > 600 ? 220 : 90,
        ),
        const Text(
          "Clean",
          style: TextStyle(
              fontFamily: TextConstants.openSans, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
