import 'package:flutter/material.dart';

import '../../../../core/constants/values.dart';
import '../../../../core/utils/utils.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout(
      {Key? key,
      required this.color,
      required this.webWidget,
      required this.mobileWidget})
      : super(key: key);

  final Color color;
  final Widget webWidget;
  final Widget mobileWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool constraintWidth = constraints.maxWidth > DefaultValues.MOBILE_MAX;
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: color,
            height: Utils.returnSizeHeight(constraints, context, 0.7, 0.9),
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900, minWidth: 350),
            child: Container(
              padding: constraintWidth
                  ? EdgeInsets.symmetric(horizontal: 50)
                  : EdgeInsets.symmetric(horizontal: 20),
              height: Utils.returnSizeHeight(constraints, context, 0.7, 0.9),
              width: Utils.sizeQuery(context).width,
              color: color,
              child: SingleChildScrollView(
                  child: constraintWidth ? webWidget : mobileWidget),
            ),
          ),
        ],
      );
    });
  }
}
