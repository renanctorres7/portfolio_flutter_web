import 'package:flutter/material.dart';
import 'package:portfolio/app/core/utils/utils.dart';

import '../../../../../core/constants/theme/colors_app.dart';

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
  @override
  Widget build(BuildContext context) {
    if (widget.value == true) {
      return Container(
        color: ColorsApp.gray,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  } else {
                    return ColorsApp.gray3;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(
                        fontSize: 16,
                        fontFamily: "quicksand",
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.gray3)),
              ),
              onPressed: () {
                Utils.scrollUntilElementPage(
                    0, widget.height, widget.scrollController);
              },
              child: const Text(
                'Sobre   ',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  } else {
                    return ColorsApp.gray3;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(
                        fontSize: 16,
                        fontFamily: "quicksand",
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.gray3)),
              ),
              onPressed: () {
                Utils.scrollUntilElementPage(
                    1, widget.height, widget.scrollController);
              },
              child: const Text(
                'Projetos',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  } else {
                    return ColorsApp.gray3;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(
                        fontSize: 16,
                        fontFamily: "quicksand",
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.gray3)),
              ),
              onPressed: () {
                Utils.scrollUntilElementPage(
                    2, widget.height, widget.scrollController);
              },
              child: const Text(
                'Habilidades',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  } else {
                    return ColorsApp.gray3;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(
                        fontSize: 16,
                        fontFamily: "quicksand",
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.gray3)),
              ),
              onPressed: () {
                Utils.scrollUntilElementPage(
                    3, widget.height, widget.scrollController);
              },
              child: const Text(
                'Contato',
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
