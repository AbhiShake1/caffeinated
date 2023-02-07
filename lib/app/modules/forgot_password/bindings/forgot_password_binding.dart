import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStorage>(() => GetStorage());
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
  }
}
