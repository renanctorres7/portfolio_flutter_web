import 'package:get/get.dart';
import 'package:portfolio/app/modules/modules.dart';
import 'package:portfolio/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.home, page: () => HomePage(), binding: HomeBindings())
  ];
}
