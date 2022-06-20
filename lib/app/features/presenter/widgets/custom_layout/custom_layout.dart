import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../../../../core/utils/utils_functions.dart';

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
      bool constraintWidth = constraints.maxWidth > DefaultValues.mobileMax;
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: color,
            height: Utils.returnSizeHeight(constraints, context, 0.7, 0.9),
            width: context.screenSize.width,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900, minWidth: 350),
            child: Container(
              padding: constraintWidth
                  ? const EdgeInsets.symmetric(horizontal: 50)
                  : const EdgeInsets.symmetric(horizontal: 20),
              height: Utils.returnSizeHeight(constraints, context, 0.7, 0.9),
              width: context.screenSize.width,
              color: color,
              child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: constraintWidth ? webWidget : mobileWidget),
            ),
          ),
        ],
      );
    });
  }
}
