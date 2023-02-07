import 'package:caffeinated/app/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late final TextEditingController emailController;
  late final AuthRepo _authRepo;
  late final GlobalKey<FormState> formKey;

  Future<void> sendPasswordResetEmail() async {
    if (emailController.text.isEmpty) return;
    await Get.showOverlay(
      asyncFunction: () async {
        final res = await _authRepo.sendPasswordResetEmail(
          emailController.text,
        );
        res.fold(
          (l) => Get.snackbar(
            'Something went wrong',
            l.message,
            backgroundColor: Get.theme.errorColor,
          ),
          (r) => Get.snackbar(
            'Success',
            r,
            backgroundColor: Get.theme.colorScheme.secondary,
          ),
        );
      },
      loadingWidget: const Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void onInit() {
    formKey = GlobalKey();
    _authRepo = Get.find<AuthRepo>();
    emailController = TextEditingController();
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
