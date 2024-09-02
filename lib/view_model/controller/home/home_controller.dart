import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_webview/view/web_view/web_view_page.dart';

class HomeController extends GetxController {
  RxInt selectedNav = 0.obs;

  RxList<Widget> screenList = [
    WebViewPage(key: UniqueKey(), webUrl: 'https://myshopbd24.com/'),
    WebViewPage(key: UniqueKey(), webUrl: 'https://myshopbd24.com/login'),
    WebViewPage(key: UniqueKey(), webUrl: 'https://myshopbd24.com/about'),
  ].obs;
}
