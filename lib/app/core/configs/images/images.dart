import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String _imagePath = "images";

class AppImages {
  static const String android = '$_imagePath/android.svg';
  static const String apple = '$_imagePath/apple.svg';

  static const String linkedin = '$_imagePath/linkedin.svg';

  static const String local = '$_imagePath/local.svg';
  static const String mailSign = '$_imagePath/mailSign.svg';
  static const String mobile = '$_imagePath/mobile.svg';
  static const String pc = '$_imagePath/pc.svg';
  static const String profile = '$_imagePath/profile.jpeg';
  static const String web = '$_imagePath/web.svg';
  static const String whats = '$_imagePath/whats.svg';

  static loadImages(BuildContext context) async {
    Future.wait([
      precacheImage(const AssetImage(profile), context),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, android), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, apple), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, linkedin),
          null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, local), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, mailSign),
          null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, mobile), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, pc), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, web), null),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, whats), null),
    ]);
  }
}
