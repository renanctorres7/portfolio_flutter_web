import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/utils.dart';
import '../widgets/contact/contact_mobile.dart';
import '../widgets/contact/contact_web.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.white,
            height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? Utils.sizeQuery(context).height * 0.7
                : Utils.sizeQuery(context).height * 0.9,
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
            child: Container(
              color: ColorsApp.white,
              height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                  ? Utils.sizeQuery(context).height * 0.7
                  : Utils.sizeQuery(context).height * 0.9,
              width: Utils.sizeQuery(context).width,
              child: Container(
                padding: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? EdgeInsets.only(left: 0)
                    : EdgeInsets.only(left: 60),
                width: Utils.sizeQuery(context).width,
                height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? Utils.sizeQuery(context).height * 0.6
                    : Utils.sizeQuery(context).height * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:
                        constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? 100
                            : 50,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 800, minWidth: 350),
                        child: Container(
                          width: Utils.sizeQuery(context).width * 0.8,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            'Contato',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 26,
                                color: ColorsApp.graphite,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                      ),
                      constraints.maxWidth > DefaultValues.MOBILE_MAX
                          ? ContactWeb()
                          : ContactMobile(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
