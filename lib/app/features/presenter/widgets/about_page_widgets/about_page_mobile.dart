import 'package:flutter/material.dart';

import '../../../../core/constants/theme/colors_app.dart';
import '../../../../core/constants/texts/about_texts.dart';
import '../../../../core/utils/utils_functions.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.sizeQuery(context).height,
      width: Utils.sizeQuery(context).width,
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
          ),
          const Flexible(
            flex: 2,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/eu.jpeg'),
              radius: 100,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Flexible(
            child: Text(
              AboutTexts.name,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 24,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Flexible(
            child: Text(
              AboutTexts.profession,
              style: TextStyle(
                  fontSize: 18,
                  color: ColorsApp.gray4,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Flexible(
            flex: 2,
            child: Text(AboutTexts.about,
                style: TextStyle(
                    fontSize: 16,
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: SizedBox(
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      enableFeedback: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      textStyle: const TextStyle(
                          color: ColorsApp.graphite,
                          fontFamily: 'quicksand',
                          fontSize: 14),
                      backgroundColor: ColorsApp.gray4,
                      onSurface: ColorsApp.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)))),
                  onPressed: () => Utils.launchURL(AboutTexts.resume),
                  child: const Text('Baixar currículo')),
            ),
          ),
        ],
      ),
    );
  }
}
