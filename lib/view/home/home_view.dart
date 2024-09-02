import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_shop_webview/res/color_manager/app_colors.dart';
import 'package:my_shop_webview/view/web_view/web_view_page.dart';
import 'package:my_shop_webview/view_model/controller/home/home_controller.dart';
import 'package:my_shop_webview/view_model/controller/web_view/web_show_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      int homeTabCount = 0;
      return Obx(
        () => Scaffold(
          body: controller.screenList[controller.selectedNav.value],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                controller.selectedNav.value = value;
                if (controller.selectedNav.value == 0) {
                  if (homeTabCount > 2) {
                    Get.find<WebShowViewModel>().webController.reload();
                  } else {
                    homeTabCount = homeTabCount + 1;
                  }
                  // print('homeTabCount: $homeTabCount');
                }
              },
              currentIndex: controller.selectedNav.value,
              items: [
                _navigationItem(
                    navigationItem: const NavigationItemModel(
                        name: "Home", icon: Icons.home)),
                _navigationItem(
                    navigationItem: const NavigationItemModel(
                        name: "Login", icon: Icons.login)),
                _navigationItem(
                    navigationItem: const NavigationItemModel(
                        name: "About", icon: Icons.contact_support)),
              ]),
        ),
      );
    });
  }

  // Future<List<Widget>> navBarList(){
  //   List<BottomNavigationBarItem> navList = [];
  //   for (int ){

  //   }
  // }

  BottomNavigationBarItem _navigationItem(
      {required NavigationItemModel navigationItem}) {
    return BottomNavigationBarItem(
      backgroundColor: AppColors.whiteBg,
      icon: Icon(
        navigationItem.icon,
        size: 20.sp,
        color: AppColors.black.withOpacity(0.4),
      ),
      label: navigationItem.name,
      activeIcon: Icon(
        navigationItem.icon,
        size: 22.sp,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NavigationItemModel {
  final String name;
  final IconData icon;
  const NavigationItemModel({
    required this.name,
    required this.icon,
  });
}
