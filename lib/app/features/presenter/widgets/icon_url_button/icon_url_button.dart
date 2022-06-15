import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/utils.dart';

class IconUrlButton extends StatelessWidget {
  const IconUrlButton({Key? key, required this.url, required this.asset})
      : super(key: key);

  final String url;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? TextButton(
            onPressed: () {
              Utils.launchURL(url);
            },
            child: SizedBox(
              height: 50,
              child: SvgPicture.asset(asset),
            ))
        : const SizedBox();
  }
}
