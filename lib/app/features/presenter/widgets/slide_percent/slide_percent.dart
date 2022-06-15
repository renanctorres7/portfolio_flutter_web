import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/theme/colors_app.dart';

class SlidePercent extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double percent;
  final bool isWeb;

  const SlidePercent(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.percent,
      required this.isWeb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 900,
      height: isWeb == true ? 50 : 30,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              width: 200,
              child: AutoSizeText(
                text,
                maxLines: 3,
                style: TextStyle(
                    fontSize: isWeb == true ? 18 : 14,
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: 300,
                  height: isWeb == true ? 30 : 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: ColorsApp.white),
                ),
                Container(
                  width: (percent / 100) * 300,
                  height: isWeb == true ? 30 : 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: ColorsApp.gray1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
