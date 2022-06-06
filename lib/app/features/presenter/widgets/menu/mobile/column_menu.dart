import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/stores/home_store.dart';

import '../../../../../core/constants/colors.dart';

class ColumnMenu extends StatefulWidget {
  const ColumnMenu(
      {Key? key,
      required this.height,
      required this.value,
      required this.scrollController})
      : super(key: key);

  final double height;
  final bool value;
  final ScrollController scrollController;

  @override
  State<ColumnMenu> createState() => _ColumnMenuState();
}

class _ColumnMenuState extends State<ColumnMenu> {
  final store = HomeStore();
  @override
  Widget build(BuildContext context) {
    if (widget.value == true) {
      return Container(
        color: ColorsApp.gray,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return ColorsApp.gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.gray3)),
                ),
                onPressed: () {
                  store.goToElement(0, widget.height, widget.scrollController);
                },
                child: Text(
                  'Sobre   ',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return ColorsApp.gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.gray3)),
                ),
                onPressed: () {
                  store.goToElement(1, widget.height, widget.scrollController);
                },
                child: Text(
                  'Projetos',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return ColorsApp.gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.gray3)),
                ),
                onPressed: () {
                  store.goToElement(2, widget.height, widget.scrollController);
                },
                child: Text(
                  'Habilidades',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return ColorsApp.gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.gray3)),
                ),
                onPressed: () {
                  store.goToElement(3, widget.height, widget.scrollController);
                },
                child: Text(
                  'Contato',
                ),
              ),
            ),
          ],
        ),
      );
    } else
      return Container();
  }
}
