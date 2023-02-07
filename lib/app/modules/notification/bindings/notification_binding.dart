import 'package:caffeinated/app/data/repo/notification_repo.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(
      () => NotificationController(),
    );
    Get.lazyPut<NotificationRepo>(
      () => NotificationRepo(Get.find<RestClient>()),
    );
  }
}
