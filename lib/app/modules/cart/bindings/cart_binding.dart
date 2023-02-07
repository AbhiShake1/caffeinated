import 'package:caffeinated/app/data/repo/cart_repo.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartRepo(Get.find<RestClient>()));
  }
}
