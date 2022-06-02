import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constants/texts/about_texts.dart';

import 'package:universal_html/html.dart' as html;

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/utils.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool constraintWidth = constraints.maxWidth > DefaultValues.MOBILE_MAX;
      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
        child: Container(
          height: _returnSizeValue(constraints, context),
          width: Utils.sizeQuery(context).width,
          color: ColorsApp.graphite,
          child: SingleChildScrollView(
              child: constraintWidth ? _webVersion() : _mobileVersion()),
        ),
      );
    });
  }
}

Widget _webVersion() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              AboutTexts.name,
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
              AboutTexts.profession,
              style: TextStyle(
                  fontSize: 23,
                  color: ColorsApp.gray4,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 400,
            padding: const EdgeInsets.only(top: 10),
            child: Text(AboutTexts.about,
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(
                        color: ColorsApp.graphite,
                        fontFamily: 'quicksand',
                        fontSize: 14),
                    backgroundColor: ColorsApp.gray4,
                    onSurface: ColorsApp.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60)))),
                onPressed: () {
                  html.window.open(AboutTexts.resume, 'Currículo');
                },
                child: Text('Baixar currículo')),
          )
        ],
      )
    ],
  );
}

Widget _mobileVersion() {
  return Column(
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
              radius: 50,
            ),
          ),
          Container(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400, minWidth: 350),
            child: Container(
              width: 400,
              child: Text(
                AboutTexts.name,
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
                AboutTexts.profession,
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
              child: Text(AboutTexts.about,
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle: TextStyle(
                    color: ColorsApp.graphite,
                    fontFamily: 'quicksand',
                    fontSize: 14),
                backgroundColor: ColorsApp.gray4,
                onSurface: ColorsApp.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60)))),
            onPressed: () {
              html.window.open(AboutTexts.resume, 'Currículo');
            },
            child: Text('Baixar currículo')),
      ),
    ],
  );
}

double _returnSizeValue(BoxConstraints constraints, BuildContext context) {
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return Utils.sizeQuery(context).height * 0.7;
  } else {
    return Utils.sizeQuery(context).height * 0.9;
  }
}
