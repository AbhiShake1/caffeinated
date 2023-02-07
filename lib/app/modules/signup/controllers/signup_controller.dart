import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/repo/auth_repo.dart';
import 'package:caffeinated/app/data/request_models/signup_request_model/signup_request_model.dart';
import 'package:caffeinated/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignupController extends GetxController {
  late final TapGestureRecognizer alreadyAccountRecognizer;

  late final TextEditingController nameController,
      emailController,
      passwordController;
  late final AuthRepo _authRepo;
  late final GlobalKey<FormState> formKey;
  late final GetStorage _storage;

  void navigateToLogin() => Get.toNamed(Routes.LOGIN);

  Future<void> signup() async {
    if (!formKey.currentState!.validate()) return;

    await Get.showOverlay(
      asyncFunction: () async {
        final res = await _authRepo.signup(
          SignupRequestModel(
            name: nameController.text,
            email: emailController.text,
            password: passwordController.text,
          ),
        );
        res.fold(
          (l) => Get.snackbar(
            'Failed',
            l.message,
            backgroundColor: Get.theme.errorColor,
          ),
          (r) {
            Get.lazyPut<UserModel>(() => r);
            _storage.write('current_user_key', r);
            Get.offAllNamed(Routes.HOME);
          },
        );
      },
      loadingWidget: const Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void onInit() {
    _storage = Get.find<GetStorage>();
    _authRepo = Get.find<AuthRepo>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey();
    alreadyAccountRecognizer = TapGestureRecognizer()..onTap = navigateToLogin;
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
