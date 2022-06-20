import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/configs/configs.dart';

class SkillsCardItem extends StatelessWidget {
  const SkillsCardItem(
      {Key? key,
      required this.svgAsset,
      required this.isWeb,
      required this.title,
      required this.text})
      : super(key: key);

  final String svgAsset;
  final bool isWeb;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return isWeb == true
        ? Column(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: svgAsset.isNotEmpty
                        ? SvgPicture.asset(
                            svgAsset,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.design_services_rounded,
                            size: 50,
                            color: ColorsApp.gray3,
                          ),
                  ),
                ),
              ),
              Container(
                width: 150,
                padding: const EdgeInsets.only(top: 20),
                child: AutoSizeText(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 18,
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 150,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20),
                child: AutoSizeText(
                  text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'roboto',
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: svgAsset.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset(
                            svgAsset,
                            color: Colors.black,
                            fit: BoxFit.contain,
                          ),
                        )
                      : const Icon(
                          Icons.design_services_rounded,
                          size: 25,
                          color: ColorsApp.gray3,
                        ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20),
                child: AutoSizeText(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 16,
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20),
                child: AutoSizeText(
                  text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'roboto',
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          );
  }
}
