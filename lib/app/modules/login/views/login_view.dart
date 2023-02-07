import 'package:caffeinated/app/modules/login/controllers/login_controller.dart';
import 'package:caffeinated/app/views/views/fade_animation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Form(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Stack(
                children: [
                  Positioned(
                    top: -40,
                    height: 400,
                    width: Get.width,
                    child: FadeAnimation(
                      1,
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: Get.width + 20,
                    child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/background-2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      1.5,
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Get.theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                    FadeAnimation(
                      1.7,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade200,
                                  ),
                                ),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmptyOrNull) {
                                    return 'Required';
                                  }
                                  if (!value!.isEmail) {
                                    return 'Invalid';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: controller.emailController,
                                decoration: const InputDecoration(
                                  hintText: "Email",
                                ),
                              ),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmptyOrNull) {
                                  return 'Required';
                                }
                                if (value!.length < 4) {
                                  return 'Must be at least 4 character long';
                                }
                                return null;
                              },
                              controller: controller.passwordController,
                              decoration: const InputDecoration(
                                hintText: "Password",
                              ),
                            ).p8(),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    FadeAnimation(
                      1.7,
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Forgot Password?",
                            style: TextStyle(
                              color: Get.theme.colorScheme.primary,
                            ),
                            recognizer: controller.forgotPasswordRecognizer,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                    FadeAnimation(
                      1.9,
                      MaterialButton(
                        onPressed: controller.signin,
                        color: Get.theme.colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ).pSymmetric(h: 40, v: 15),
                      ).centered(),
                    ),
                    const Spacer(),
                    FadeAnimation(
                      2,
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Create Account",
                            style: TextStyle(
                              color: Get.theme.colorScheme.secondary,
                            ),
                            recognizer: controller.createAccountRecognizer,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 7),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
