import 'package:caffeinated/app/modules/cart/views/cart_view.dart';
import 'package:caffeinated/app/modules/profile/views/profile_view.dart';
import 'package:caffeinated/app/modules/shop/views/shop_view.dart';
import 'package:caffeinated/app/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;

  late final List<Widget> bodies;

  Widget get body => bodies[selectedIndex.value];

  Future<void> _initFcm() => FirebaseNotification.init();

  @override
  void onInit() {
    _initFcm();
    bodies = [
      const ShopView(key: ValueKey('all_items')),
      const CartView(),
      ShopView(
        predicate: (item) => item.bookmarked,
        key: const ValueKey('bookmarked_items'),
      ),
      const ProfileView(),
    ];
    super.onInit();
  }

  void setSelectedIndex(int index) => selectedIndex.value = index;
}
