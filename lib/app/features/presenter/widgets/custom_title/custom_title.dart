import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.title, required this.textIsWhite})
      : super(key: key);

  final String title;
  final bool textIsWhite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: 900,
        alignment: Alignment.centerLeft,
        child: AutoSizeText(title,
            textAlign: TextAlign.left,
            style: textIsWhite
                ? context.appTextTheme.headline1
                : context.appTextTheme.headline2),
      ),
    );
  }
}
