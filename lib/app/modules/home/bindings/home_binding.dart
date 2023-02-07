import 'package:caffeinated/app/modules/cart/bindings/cart_binding.dart';
import 'package:caffeinated/app/modules/cart/controllers/cart_controller.dart';
import 'package:caffeinated/app/modules/profile/bindings/profile_binding.dart';
import 'package:caffeinated/app/modules/shop/bindings/shop_binding.dart';
import 'package:caffeinated/app/modules/shop/controllers/shop_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStorage>(() => GetStorage());
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    ShopBinding().dependencies();
    CartBinding().dependencies();
    ProfileBinding().dependencies();
  }
}
