import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

part 'about_page_store.g.dart';

class AboutPageStore = _AboutPageStoreBase with _$AboutPageStore;

abstract class _AboutPageStoreBase with Store {
  @observable
  var imageUrl = "assets/Currículo_Renan_C_Torres.pdf";

  @action
  Future<void> downloadFile() async {
    Directory? appDocDirectory;
    if (kIsWeb) {
      // Set web-specific directory
    } else {
      appDocDirectory = await getApplicationDocumentsDirectory();
    }

    Directory directory =
        await new Directory(appDocDirectory!.path + '/' + 'dir')
            .create(recursive: true);

    Dio dio = Dio();

    try {
      dio.download(imageUrl, '', onReceiveProgress: (rec, total) {});
    } catch (e) {
      print(e.toString());
    }
  }
}
