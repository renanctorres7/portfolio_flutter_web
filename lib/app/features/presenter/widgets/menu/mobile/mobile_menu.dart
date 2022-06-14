import 'package:flutter/material.dart';

import '../../../../../core/constants/theme/colors_app.dart';
import '../../../../../core/utils/utils_functions.dart';
import 'column_menu.dart';

class MobileMenu extends StatefulWidget {
  final double height;
  final ScrollController scrollController;
  MobileMenu({required this.height, required this.scrollController});

  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.sizeQuery(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
          color: ColorsApp.gray,
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 5)
          ]),
      height: value == false ? 80 : 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'PORTFÓLIO',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsApp.graphite),
                  )),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    icon: Icon(
                      Icons.menu,
                      color: ColorsApp.graphite,
                    )),
              )
            ],
          ),
          ColumnMenu(
            height: widget.height,
            value: value,
            scrollController: widget.scrollController,
          ),
        ],
      ),
    );
  }
}
