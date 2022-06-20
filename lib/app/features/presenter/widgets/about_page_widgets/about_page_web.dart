import 'package:flutter/material.dart';

import '../../../../core/configs/configs.dart';
import '../widgets.dart';

class AboutPageWeb extends StatelessWidget {
  const AboutPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
            flex: 2,
            child: AboutList(
              isWeb: true,
            )),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.profile),
                  radius: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: CustomButton(),
              )
            ],
          ),
        )
      ],
    );
  }
}
