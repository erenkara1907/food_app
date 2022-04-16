import 'package:food_app/view/intro/intro.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.INTRO,
      page: () => Intro(),
    )
  ];
}
