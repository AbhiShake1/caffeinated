import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.body),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(CupertinoIcons.archivebox),
              label: 'Purchase',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.heart),
              label: 'Favourites',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
            ),
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.setSelectedIndex,
        ),
      ),
    );
  }
}
