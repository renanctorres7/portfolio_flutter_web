import 'package:flutter/material.dart';

import '../../../../../core/configs/configs.dart';
import '../../../../../core/utils/utils.dart';

class WebMenu extends StatefulWidget {
  final double heigth;
  final ScrollController scrollController;
  const WebMenu(
      {Key? key, required this.heigth, required this.scrollController})
      : super(key: key);

  @override
  State<WebMenu> createState() => _WebMenuState();
}

class _WebMenuState extends State<WebMenu> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1920),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5)),
              color: ColorsApp.gray,
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 5)
              ]),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 60),
                  child: const Text(
                    'PORTFÓLIO',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsApp.graphite),
                  )),
              Container(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          Utils.scrollUntilElementPage(
                              0, widget.heigth, widget.scrollController);
                        },
                        child: const Text('Sobre'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          Utils.scrollUntilElementPage(
                              1, widget.heigth, widget.scrollController);
                        },
                        child: const Text(
                          'Projetos',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          Utils.scrollUntilElementPage(
                              2, widget.heigth, widget.scrollController);
                        },
                        child: const Text(
                          'Habilidades',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          Utils.scrollUntilElementPage(
                              3, widget.heigth, widget.scrollController);
                        },
                        child: const Text(
                          'Contato',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
