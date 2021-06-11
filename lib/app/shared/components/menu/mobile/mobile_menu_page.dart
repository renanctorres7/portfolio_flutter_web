import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class MobileMenuPage extends StatefulWidget {
  @override
  MobileMenuPageState createState() => MobileMenuPageState();
}

class MobileMenuPageState extends State<MobileMenuPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: graphite),
        backgroundColor: gray,
        toolbarHeight: 100,
        elevation: 10,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Text(
              'PORTFÓLIO',
              style: TextStyle(
                  fontSize: 26, fontWeight: FontWeight.bold, color: graphite),
            )),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
