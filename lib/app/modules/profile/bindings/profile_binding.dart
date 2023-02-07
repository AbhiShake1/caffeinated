import 'package:caffeinated/app/data/repo/user_repo.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<UserRepo>(
      () => UserRepo(Get.find<RestClient>()),
    );
  }
}
