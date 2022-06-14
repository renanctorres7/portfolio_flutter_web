import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/theme/colors_app.dart';
import '../../../../core/utils/utils_functions.dart';

Widget itemList(
    {required String image,
    required final String text,
    required final String url,
    required final bool isWeb}) {
  return url.isNotEmpty
      ? TextButton(
          onPressed: () => Utils.launchURL(url),
          style: ButtonStyle(
            padding:
                MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.purple;
              } else {
                return ColorsApp.gray3;
              }
            }),
            textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(
                fontSize: isWeb ? 16 : 14,
                fontFamily: "quicksand",
                fontWeight: FontWeight.w600,
                color: ColorsApp.gray3)),
          ),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                child: SizedBox(
                  height: isWeb ? 50 : 30,
                  width: isWeb ? 50 : 30,
                  child: SvgPicture.asset(image),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    text,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: isWeb ? 16 : 14,
                        fontFamily: "quicksand",
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.gray3),
                  ),
                ),
              ),
            ],
          ),
        )
      : Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: SizedBox(
                height: isWeb ? 50 : 30,
                width: isWeb ? 50 : 30,
                child: SvgPicture.asset(image),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  text,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: isWeb ? 16 : 12,
                      fontFamily: "quicksand",
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.gray3),
                ),
              ),
            ),
          ],
        );
}
