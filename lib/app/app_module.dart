import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/components/menu/web/web_menu_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CarouselWebStore()),
    Bind.lazySingleton((i) => WebMenuStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
