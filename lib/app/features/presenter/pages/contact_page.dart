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
      bool constraintWidth = constraints.maxWidth > DefaultValues.MOBILE_MAX;
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.white,
            height: _returnSizeValue(constraints, context, 0.7, 0.9),
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900, minWidth: 350),
            child: Container(
              color: ColorsApp.white,
              height: _returnSizeValue(constraints, context, 0.7, 0.9),
              width: Utils.sizeQuery(context).width,
              child: Container(
                width: Utils.sizeQuery(context).width,
                height: _returnSizeValue(constraints, context, 0.7, 0.9),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: constraintWidth
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: constraintWidth ? 100 : 50,
                      ),
                      Container(
                        padding: constraintWidth
                            ? EdgeInsets.symmetric(horizontal: 50)
                            : EdgeInsets.only(left: 60),
                        width: 900,
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
                      Container(
                        height: 30,
                      ),
                      constraintWidth ? ContactWeb() : ContactMobile(),
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

double _returnSizeValue(
    BoxConstraints constraints, BuildContext context, double a, double b) {
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return Utils.sizeQuery(context).height * a;
  } else {
    return Utils.sizeQuery(context).height * b;
  }
}
