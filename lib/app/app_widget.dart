import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'quicksand'),
      home: HomePage(),
    );
  }
}
