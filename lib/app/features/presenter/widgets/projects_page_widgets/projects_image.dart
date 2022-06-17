import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/constants/constants.dart';

class ProjectsImage extends StatelessWidget {
  const ProjectsImage({Key? key, required this.image, required this.isWeb})
      : super(key: key);
  final String image;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isWeb ? 400 : 300,
      child: Image.network(
        image,
        fit: BoxFit.fitHeight,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return SizedBox(
            width: context.screenSize.width,
            height: context.screenSize.height,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  color: ColorsApp.purple,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
