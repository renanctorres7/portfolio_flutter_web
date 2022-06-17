import 'package:flutter/material.dart';

import '../../../../core/configs/configs.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsApp.purple,
      ),
    );
  }
}
