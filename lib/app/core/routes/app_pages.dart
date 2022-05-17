import 'package:get/get.dart';

import '../../features/presenter/bindings/home_bindings.dart';
import '../../features/presenter/pages/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.home, page: () => HomePage(), binding: HomeBindings())
  ];
}
