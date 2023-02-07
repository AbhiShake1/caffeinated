import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
    Get.lazyPut<GetStorage>(
      () => GetStorage(),
    );
  }
}
