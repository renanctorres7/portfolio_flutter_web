import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class SlidePercent extends StatelessWidget {
  final String text;
  final double width;
  final double height;

  const SlidePercent(
      {Key? key, required this.text, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
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
                      width: 300,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: white),
                    ),
                    Container(
                      width: 200,
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
