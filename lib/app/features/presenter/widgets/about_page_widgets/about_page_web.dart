import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/theme/colors_app.dart';
import '../../../../core/constants/texts/about_texts.dart';
import '../../../../core/utils/utils_functions.dart';

class AboutPageWeb extends StatelessWidget {
  const AboutPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const SizedBox(
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
                child: const Text(
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
                child: const Text(AboutTexts.about,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w400)),
              )
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.profile),
                radius: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(60)))),
                    onPressed: () => Utils.launchURL(AboutTexts.resume),
                    child: const Text('Baixar currículo')),
              )
            ],
          ),
        )
      ],
    );
  }
}
