import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(
        child: SingleChildScrollView(
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
            layout: constraints.maxWidth > 550
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                  child: Column(
                crossAxisAlignment: constraints.maxWidth > 550
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                  ),
                  Text(
                    'Renan C. Torres',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 26,
                        color: white,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Desenvolvedor Front-End',
                    style: TextStyle(
                        fontSize: 23,
                        color: gray4,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(sobre,
                      style: TextStyle(
                          fontSize: 16,
                          color: white,
                          fontWeight: FontWeight.w400))
                ],
              )),
              ResponsiveRowColumnItem(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: constraints.maxWidth > 550 ? 120 : 20,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('eu.jpeg'),
                      radius: 100,
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          enableFeedback: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 20),
                          textStyle: TextStyle(
                              color: graphite,
                              fontFamily: 'quicksand',
                              fontSize: 14),
                          backgroundColor: gray4,
                          onSurface: white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)))),
                      onPressed: () {
                        print("teste");
                      },
                      child: Text('Ver currículo'))
                ],
              ))
            ],
          ),
        ),
      );
    });
  }
}