import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:responsive_framework/responsive_framework.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
            layout: constraints.maxWidth > 650
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                  child: Column(
                crossAxisAlignment: constraints.maxWidth > 650
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                  ),
                  Container(
                    width: 400,
                    child: Text(
                      'Renan C. Torres',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 26,
                          color: white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Desenvolvedor Front-End',
                      style: TextStyle(
                          fontSize: 23,
                          color: gray4,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(sobre,
                        style: TextStyle(
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              )),
              ResponsiveRowColumnItem(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: constraints.maxWidth > 650 ? 150 : 20,
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
                        html.window.open(
                            'https://drive.google.com/file/d/1rehaNXloYlZ1-4b_jO-EokSTnFyxhl8Q/view?usp=sharing',
                            'Currículo');
                      },
                      child: Text('Baixar currículo'))
                ],
              ))
            ],
          ),
        ),
      );
    });
  }
}
