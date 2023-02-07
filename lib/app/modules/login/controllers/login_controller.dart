import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/repo/auth_repo.dart';
import 'package:caffeinated/app/data/request_models/signin_request_model/signin_request_model.dart';
import 'package:caffeinated/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  late final TapGestureRecognizer createAccountRecognizer,
      forgotPasswordRecognizer;

  late final GetStorage _storage;

  late final GlobalKey<FormState> formKey;
  late final AuthRepo _authRepo;

  late final TextEditingController emailController, passwordController;

  void navigateToSignup() => Get.toNamed(Routes.SIGNUP);

  void navigateToForgotPassword() => Get.toNamed(Routes.FORGOT_PASSWORD);

  Future<void> signin() async {
    if (!formKey.currentState!.validate()) return;
    await Get.showOverlay(
      asyncFunction: () async {
        final res = await _authRepo.signIn(
          SigninRequestModel(
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
    formKey = GlobalKey();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    createAccountRecognizer = TapGestureRecognizer()..onTap = navigateToSignup;
    forgotPasswordRecognizer = TapGestureRecognizer()
      ..onTap = navigateToForgotPassword;
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
