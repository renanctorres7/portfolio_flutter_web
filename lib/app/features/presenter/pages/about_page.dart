import 'package:flutter/material.dart';

import 'package:universal_html/html.dart' as html;

import '../../../core/constants/colors.dart';
import '../../../core/constants/text.dart';
import '../../../core/constants/values.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: LayoutBuilder(builder: (context, constraints) {
        final size = MediaQuery.of(context).size;

        return Container(
          width: size.width,
          height: size.height,
          child: Visibility(
            visible:
                constraints.maxWidth > DefaultValues.MOBILE_MAX ? true : false,
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
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
                        Container(
                          width: 400,
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Desenvolvedor Flutter',
                            style: TextStyle(
                                fontSize: 23,
                                color: ColorsApp.gray4,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: 400,
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(DefaultTexts.about,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/eu.jpeg'),
                            radius: 100,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  enableFeedback: true,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  textStyle: TextStyle(
                                      color: ColorsApp.graphite,
                                      fontFamily: 'quicksand',
                                      fontSize: 14),
                                  backgroundColor: ColorsApp.gray4,
                                  onSurface: ColorsApp.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60)))),
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/file/d/1rehaNXloYlZ1-4b_jO-EokSTnFyxhl8Q/view?usp=sharing',
                                    'Currículo');
                              },
                              child: Text('Baixar currículo')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            replacement: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/eu.jpeg'),
                            radius: 100,
                          ),
                        ),
                        Container(
                          height: 50,
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: 400, minWidth: 350),
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
                          constraints:
                              BoxConstraints(maxWidth: 400, minWidth: 350),
                          child: Container(
                            width: 400,
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Desenvolvedor Flutter',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: ColorsApp.gray4,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: 400, minWidth: 350),
                          child: Container(
                            width: 400,
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(DefaultTexts.about,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: ColorsApp.white,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      width: 200,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              enableFeedback: true,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
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
                          child: Text('Baixar currículo')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
