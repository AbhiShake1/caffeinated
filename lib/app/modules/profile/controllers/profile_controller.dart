import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/repo/user_repo.dart';
import 'package:caffeinated/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  final _user = Get.find<UserModel>().obs;

  late final GlobalKey<FormState> profileFormKey, changePasswordFormKey;
  late final UserRepo _repo;
  late final GetStorage _storage;

  late final TextEditingController nameController,
      newPasswordController,
      oldPasswordController,
      confirmNewPasswordController;

  UserModel get user => _user.value;

  Future<void> changePassword() async {
    if (!changePasswordFormKey.currentState!.validate()) return;

    await Get.showOverlay(
      asyncFunction: () async {
        final res = await _repo.changePassword(
          userId: user.id,
          oldPassword: oldPasswordController.text,
          newPassword: newPasswordController.text,
        );

        res.fold(
          (l) => Get.snackbar(
            'Something went wrong',
            l.message,
            backgroundColor: Get.theme.colorScheme.error,
          ),
          (r) {
            oldPasswordController.clear();
            newPasswordController.clear();
            confirmNewPasswordController.clear();
            Get.back();
            Get.snackbar(
              'Success',
              'Updated',
              backgroundColor: Colors.green,
            );
          },
        );
      },
      loadingWidget: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> updateUser() async {
    await Get.showOverlay(
      asyncFunction: () async {
        final newUser = user.copyWith(
          name: nameController.text,
        );
        final res = await _repo.update(newUser);
        res.fold(
          (l) => Get.snackbar(
            'Something went wrong',
            l.message,
            backgroundColor: Get.theme.colorScheme.error,
          ),
          (r) {
            Get.back();
            _user.value = r;
            Get.replace<UserModel>(r);
            _storage.write('current_user_key', r);
            _user.value = r;
            Get.snackbar(
              'Success',
              'Updated',
              backgroundColor: Colors.green,
            );
          },
        );
      },
      loadingWidget: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> logout() async {
    final ok = await Get.defaultDialog<bool>(
      title: 'Are you sure you want to logout?',
      textConfirm: 'Yes',
      textCancel: 'Cancel',
      middleText: '',
      onConfirm: () async {
        await Get.showOverlay(
          asyncFunction: () async {
            final res = await _repo.logout();

            res.fold(
              (l) => Get.snackbar(
                'Something went wrong',
                l.message,
                backgroundColor: Get.theme.colorScheme.error,
              ),
              (r) {
                _storage.remove('current_user_key');
                Get.delete<UserModel>();
                Get.offAllNamed(Routes.LOGIN);
              },
            );
          },
          loadingWidget: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  @override
  void onInit() {
    _repo = Get.find<UserRepo>();
    _storage = Get.find<GetStorage>();
    profileFormKey = GlobalKey();
    changePasswordFormKey = GlobalKey();
    nameController = TextEditingController(text: user.name);
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmNewPasswordController = TextEditingController();
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
