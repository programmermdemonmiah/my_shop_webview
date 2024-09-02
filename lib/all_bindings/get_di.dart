import 'package:my_shop_webview/view_model/controller/home/home_controller.dart';
import 'package:my_shop_webview/view_model/controller/web_view/web_show_view_model.dart';
import 'package:get/get.dart';

init() {
  Get.lazyPut(() => HomeController(), fenix: true);
  Get.lazyPut(() => WebShowViewModel(), fenix: true);
}
