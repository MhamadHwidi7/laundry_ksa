import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CupertinoTextFieldWidget extends StatelessWidget {
  final EdgeInsetsGeometry prefixPadding;
  final EdgeInsetsGeometry? suffixPadding;
  final double heightPrefixIcon;
  final double widthPrefixIcon;
  final String assetNamePrefixIcon;
  final String? assetNameSuffixIcon;
  final String placeHolderName;
  const CupertinoTextFieldWidget(
      {super.key,
      required this.prefixPadding,
      required this.assetNamePrefixIcon,
      this.assetNameSuffixIcon,
      required this.placeHolderName,
      this.suffixPadding,
      required this.heightPrefixIcon,
      required this.widthPrefixIcon});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField.borderless(
      prefix: Padding(
        padding: prefixPadding,
        child: SvgPicture.asset(
          width: widthPrefixIcon,
          height: heightPrefixIcon,
          assetNamePrefixIcon,
          color: CupertinoColors.black,
        ),
      ),
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: CupertinoColors.black,
      ),
      placeholder: placeHolderName,
      suffix: _buildSuffix(),
    );
  }

  Widget _buildSuffix() {
    if (assetNameSuffixIcon != null && suffixPadding != null) {
      return Padding(
        padding: suffixPadding!,
        child: SvgPicture.asset(
          assetNameSuffixIcon!,
        ),
      );
    } else {
      return const SizedBox(width: 25, height: 25);
    }
  }
}
