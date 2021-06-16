import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/text.dart';

class ComponentCarouselWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 200, child: Text(sobre)),
          Image.asset(
            'cel1.png',
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}
