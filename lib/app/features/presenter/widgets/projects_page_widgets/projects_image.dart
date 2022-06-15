import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class ProjectsImage extends StatelessWidget {
  const ProjectsImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 400,
      child: Image.network(
        image,
        fit: BoxFit.fitHeight,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return SizedBox(
            width: Utils.sizeQuery(context).width,
            height: Utils.sizeQuery(context).height,
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
