import 'package:caffeinated/app/views/views/fade_animation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
                            image: AssetImage(
                              'assets/images/background-2.png',
                            ),
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
                        "Recover Account",
                        style: TextStyle(
                          color: Get.theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
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
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            hintText: "Email",
                          ),
                        ).p8(),
                      ),
                    ),
                    const Spacer(flex: 3),
                    FadeAnimation(
                      1.9,
                      MaterialButton(
                        onPressed: controller.sendPasswordResetEmail,
                        color: Get.theme.colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Recover",
                          style: TextStyle(color: Colors.white),
                        ).pSymmetric(h: 40, v: 15),
                      ).centered(),
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
