import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/theme/colors_app.dart';

Widget skillsCard(
    {required String svgAsset,
    required bool isWeb,
    required String title,
    required String text}) {
  return isWeb == true
      ? Column(
          children: [
            Container(
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
                      : Icon(
                          Icons.design_services_rounded,
                          size: 50,
                          color: ColorsApp.gray3,
                        ),
                ),
              ),
            ),
            Container(
              width: 150,
              padding: EdgeInsets.only(top: 20),
              child: AutoSizeText(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 150,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20),
              child: AutoSizeText(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'roboto',
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        )
      : Column(
          children: [
            Container(
              width: 120,
              height: 120,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: svgAsset.isNotEmpty
                      ? SvgPicture.asset(
                          svgAsset,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.design_services_rounded,
                          size: 30,
                          color: ColorsApp.gray3,
                        ),
                ),
              ),
            ),
            Container(
              width: 120,
              padding: EdgeInsets.only(top: 20),
              child: AutoSizeText(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 120,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20),
              child: AutoSizeText(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'roboto',
                    color: ColorsApp.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
}
