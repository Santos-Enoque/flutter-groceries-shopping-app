import 'package:cadevo/screens/account/account.dart';
import 'package:cadevo/screens/home/home.dart';
import 'package:cadevo/screens/scheduled/scheduled.dart';
import 'package:cadevo/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum BottomNavItem { home, scheduled, account, settings }

class BottomNavigationController extends GetxController {
  static BottomNavigationController instance = Get.find();

  Rx<BottomNavItem> activeBottomNavItem = Rx(BottomNavItem.home);
  Rx<Widget> displayScreen = Rx(HomeScreen());

  @override
  void onReady() {
    super.onReady();
    ever(activeBottomNavItem, (activeItem) {
      switch (activeItem) {
        case BottomNavItem.home:
          displayScreen.value = HomeScreen();
          break;

        case BottomNavItem.scheduled:
          displayScreen.value = ScheduledScreen();
          break;

        case BottomNavItem.account:
          displayScreen.value = AccountScreen();
          break;

        case BottomNavItem.settings:
          displayScreen.value = SettingsScreen();
          break;
        default:
          displayScreen.value = HomeScreen();
      }
    });
  }

  void changeBottomNavActiveItem(BottomNavItem item){
  activeBottomNavItem.value = item;
}
}


