import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';

class ComponentCarouselWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 400,
                child: Text(
                  'Projetos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 26,
                      color: graphite,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(width: 400, child: Text(sobre)),
            ],
          ),
          Container(
            width: 200,
            child: Image.asset(
              'cel1.png',
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
