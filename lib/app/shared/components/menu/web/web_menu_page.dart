import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class WebMenuPage extends StatefulWidget {
  @override
  WebMenuPageState createState() => WebMenuPageState();
}

class WebMenuPageState extends State<WebMenuPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      child: Card(
        color: gray,
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'PORTFÓLIO',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: graphite),
                )),
            Container(
              padding: EdgeInsets.only(right: 60),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Sobre',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: gray3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Projetos',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: gray3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Habilidades',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: gray3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Contato',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: gray3)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
