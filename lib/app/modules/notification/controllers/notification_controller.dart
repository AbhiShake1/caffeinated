import 'package:caffeinated/app/data/data_models/notification_model/notification_model.dart';
import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/repo/notification_repo.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController
    with StateMixin<List<NotificationModel>> {
  Future<void> loadNotifications() async {
    change(null, status: RxStatus.loading());
    final res = await _repo.getNotifications(userId: _user.id);
    res.fold(
      (l) => change(null, status: RxStatus.error(l.message)),
      (r) => change(r, status: RxStatus.success()),
    );
  }

  Future<void> deleteNotification(int notificationId) async {
    final res = await _repo.deleteNotification(notificationId);

    res.fold(
      (l) => Get.snackbar(
        'Something went wrong',
        l.message,
        backgroundColor: Get.theme.colorScheme.error,
      ),
      (r) => null,
    );
  }

  late final NotificationRepo _repo;
  late final UserModel _user;

  @override
  void onInit() {
    _user = Get.find<UserModel>();
    _repo = Get.find<NotificationRepo>();
    loadNotifications();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
