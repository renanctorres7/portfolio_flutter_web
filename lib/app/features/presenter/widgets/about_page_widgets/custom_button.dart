import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../../../../core/utils/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              enableFeedback: true,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              textStyle: context.appTextTheme.headline6,
              backgroundColor: ColorsApp.gray4,
              onSurface: ColorsApp.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)))),
          onPressed: () => Utils.launchURL(AboutTexts.resume),
          child: const Text('Baixar currículo')),
    );
  }
}
