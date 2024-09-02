import 'package:my_shop_webview/res/app_routes/app_routes_name.dart';
import 'package:my_shop_webview/view/home/home_view.dart';
import 'package:my_shop_webview/view/splash/splash_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: AppRoutesName.splashView,
          page: () => const SplashView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: AppRoutesName.homeView,
          page: () => const HomeView(),
        ),
      ];
}
