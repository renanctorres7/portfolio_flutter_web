import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

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
    final size = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.1,
            height: 50,
            child: AutoSizeText(
              text,
              style: TextStyle(
                  fontSize: 18, color: white, fontWeight: FontWeight.w500),
            ),
          ),
          Flexible(
            child: Align(
              child: Container(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: white),
                    ),
                    Container(
                      width: ((size.width * 0.3) * percent) / 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: gray1),
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
