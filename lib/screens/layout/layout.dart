import '../../constants/controllers.dart';
import '../../controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: Colors.white,
      body: bottomNavigationController.displayScreen.value,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.shopping_cart_outlined),
      onPressed: (){},),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.home_outlined, color: Colors.white,), onPressed: (){
            bottomNavigationController.changeBottomNavActiveItem(BottomNavItem.home);
          }),
          Container(
            padding: EdgeInsets.only(right: 36),
            child: IconButton(icon: Icon(Icons.event,color: Colors.grey,), onPressed: (){
            bottomNavigationController.changeBottomNavActiveItem(BottomNavItem.scheduled);

            })),
                    Container(
            padding: EdgeInsets.only(left: 36),
            child: IconButton(icon: Icon(Icons.person,color: Colors.grey,), onPressed: (){
            bottomNavigationController.changeBottomNavActiveItem(BottomNavItem.account);

            })),
          IconButton(icon: Icon(Icons.settings_outlined, color: Colors.grey,), onPressed: (){
            bottomNavigationController.changeBottomNavActiveItem(BottomNavItem.settings);

          }),


        ],
      ),),
    ));
  }
}
