import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/pages/home_page.dart';

import 'core/configs/configs.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appThemeData(),
        home: const HomePage(),
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()]);
  }
}
