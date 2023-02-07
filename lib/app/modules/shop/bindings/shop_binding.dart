import 'package:caffeinated/app/data/repo/shop_repo.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:caffeinated/app/modules/cart/controllers/cart_controller.dart';
import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopController>(
      () => ShopController(),
    );
    Get.lazyPut<ShopRepo>(
      () => ShopRepo(Get.find<RestClient>()),
    );
  }
}
