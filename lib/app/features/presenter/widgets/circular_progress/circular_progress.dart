import 'package:flutter/material.dart';

import '../../../../core/constants/theme/colors_app.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: ColorsApp.purple,
      ),
    );
  }
}
