import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/features/infra/models/projects_model.dart';

class HomeController extends GetxController {
  var offset = 0.0.obs;

  ScrollController? scrollController = ScrollController();

  @override
  void onReady() {
    super.onReady();
  }

  bool voidOnScroll(ScrollNotification scrollNotification) {
    offset.value = scrollNotification.metrics.pixels;
    return true;
  }

  void goToElement(
      int index, double height, ScrollController scrollController) {
    if (scrollController.hasClients)
      scrollController.animateTo(
          ((height * 0.7) *
              index), // 100 is the height of container and index of 6th element is 5
          duration: const Duration(milliseconds: 1000),
          curve: Curves.decelerate);
  }

  PageController pageController1 = PageController();

  addToFirebase() {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    List<ProjectsModels> list = [];

    try {
      final docRef = firebaseFirestore.collection('portfolio').doc('projects');

      final data = jsonDecode({
        'title': 'Aplicativo - Jejum Intermitente',
        'text':
            'Um aplicativo de jejum feito com Flutter, utiliza Local Notification e Localization. Disponível em inglês e português.',
        'android_url':
            'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
        'ios_url':
            'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
        'web_url': '',
        'image_url': 'https://www.imagemhost.com.br/images/2022/05/18/jejum.png'
      }.toString());

      docRef.update({
        'title': 'Aplicativo - Jejum Intermitente',
        'text':
            'Um aplicativo de jejum feito com Flutter, utiliza Local Notification e Localization. Disponível em inglês e português.',
        'android_url':
            'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
        'ios_url':
            'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
        'web_url': '',
        'image_url': 'https://www.imagemhost.com.br/images/2022/05/18/jejum.png'
      });

      return list;
    } on FirebaseException catch (e) {
      //TODO implementar snackbar
      throw FirebaseException(plugin: 'Exception');
    }
  }
}
