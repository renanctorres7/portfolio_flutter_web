import 'package:flutter/material.dart';

import '../../../../core/constants/theme/colors_app.dart';
import '../../../../core/constants/texts/about_texts.dart';
import '../../../../core/utils/utils_functions.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              radius: 60,
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
                    fontSize: 24,
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
                    fontSize: 18,
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
            onPressed: () => Utils.launchURL(AboutTexts.resume),
            child: Text('Baixar currículo')),
      ),
    ],
  );
  }
}

