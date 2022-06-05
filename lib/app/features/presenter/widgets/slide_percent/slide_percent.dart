import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/utils/utils.dart';

class SlidePercent extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double percent;

  const SlidePercent(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 50,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              width: 100,
              child: AutoSizeText(
                text,
                maxLines: 3,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Flexible(
            child: Align(
              child: Container(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: Utils.sizeQuery(context).width * 0.3,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: ColorsApp.white),
                    ),
                    Container(
                      width:
                          ((Utils.sizeQuery(context).width * 0.3) * percent) /
                              100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: ColorsApp.gray1),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
