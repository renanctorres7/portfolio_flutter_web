import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:universal_html/html.dart' as html;

class AboutPage extends StatelessWidget {
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
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400, minWidth: 350),
                    child: Container(
                      width: 400,
                      child: Text(
                        'Renan C. Torres',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 26,
                            color: ColorsApp.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400, minWidth: 350),
                    child: Container(
                      width: 400,
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Desenvolvedor Front-End',
                        style: TextStyle(
                            fontSize: 23,
                            color: ColorsApp.gray4,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400, minWidth: 350),
                    child: Container(
                      width: 400,
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(DefaultTexts.sobre,
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorsApp.white,
                              fontWeight: FontWeight.w400)),
                    ),
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
                      backgroundImage: AssetImage('assets/eu.jpeg'),
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
                              color: ColorsApp.graphite,
                              fontFamily: 'quicksand',
                              fontSize: 14),
                          backgroundColor: ColorsApp.gray4,
                          onSurface: ColorsApp.white,
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
