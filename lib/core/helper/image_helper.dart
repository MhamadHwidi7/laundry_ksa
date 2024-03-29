import 'dart:io';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageHelper extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;

  const ImageHelper({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    this.color,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (url == '') return _buildPlaceHolderWidget();

    if (url.startsWith("http")) {
      if (url.split('.').last == 'svg') return _buildNetworkSvgImage();
      return _buildCachedNetworkImage();
    } else if (url.startsWith("assets")) {
      if (url.split('.').last == 'svg') return _buildAssetSvgImage();
      return _buildImageAsset();
    } else {
      return _buildImageFile();
    }
  }

  Widget _buildCachedNetworkImage() {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      errorWidget: (context, url, _) => _buildErrorWidget(),
      placeholder: (context, url) => _buildPlaceHolderWidget(),
      useOldImageOnUrlChange: true,
    );
  }

  Container _buildErrorWidget() {
    return Container(
      width: width,
      height: height,
      color: Colors.redAccent,
    );
  }

  SizedBox _buildPlaceHolderWidget() {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: .5,
            sigmaY: .5,
          ),
          child: Container(
            color: Colors.purple.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget _buildAssetSvgImage() {
    return SvgPicture.asset(
      url,
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,
    );
  }

  Widget _buildNetworkSvgImage() {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,
    );
  }

  Widget _buildImageAsset() {
    return Image.asset(
      url,
      fit: fit,
      height: height,
      width: width,
    );
  }

  Widget _buildImageFile() {
    return Image.file(
      File(url),
      fit: fit,
      height: height,
      width: width,
    );
  }
}
