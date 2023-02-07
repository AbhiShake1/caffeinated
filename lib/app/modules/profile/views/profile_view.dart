import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Get.theme.colorScheme.primaryContainer.withOpacity(.3),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Get.bottomSheet(
                    const _BottomSheetModal(),
                    backgroundColor: Get.theme.scaffoldBackgroundColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    isScrollControlled: true,
                  );
                },
                child: Obx(
                  () => Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Get.theme.colorScheme.primary,
                        radius: 36,
                        child: controller
                            .user.name[0].capitalized.text.white.xl3
                            .make(),
                      ),
                      16.widthBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controller.user.name.text.bold.xl2.make(),
                          controller.user.email.text.make(),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.chevron_right,
                        color: Get.theme.colorScheme.primary,
                        size: 36,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),
          Flexible(
            flex: 11,
            child: Column(
              children: [
                ListTile(
                  title: 'Change Password'.text.make(),
                  tileColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  trailing: const Icon(Icons.password),
                  onTap: () => Get.bottomSheet(
                    const _ChangePasswordModal(),
                    backgroundColor: Get.theme.scaffoldBackgroundColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    isScrollControlled: true,
                  ),
                ),
                8.heightBox,
                ListTile(
                  title: 'Logout'.text.make(),
                  tileColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  trailing: const Icon(Icons.logout),
                  onTap: controller.logout,
                ),
              ],
            ),
          ),
        ],
      ).px8(),
    );
  }
}

class _ChangePasswordModal extends GetWidget<ProfileController> {
  const _ChangePasswordModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.changePasswordFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
                      return null;
                    },
                    controller: controller.oldPasswordController,
                    decoration: const InputDecoration(
                      hintText: "Old Password",
                    ),
                  ),
                ),
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
                      return null;
                    },
                    controller: controller.newPasswordController,
                    decoration: const InputDecoration(
                      hintText: "New Password",
                    ),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmptyOrNull) {
                      return 'Required';
                    }
                    if (value != controller.newPasswordController.text) {
                      return "Passwords don't match";
                    }
                    return null;
                  },
                  controller: controller.confirmNewPasswordController,
                  decoration: const InputDecoration(
                    hintText: "Confirm Password",
                  ),
                ).p8(),
              ],
            ),
          ),
          24.heightBox,
          MaterialButton(
            onPressed: controller.changePassword,
            color: Get.theme.colorScheme.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ).pSymmetric(h: 40, v: 15),
          ).centered(),
        ],
      ),
    ).pSymmetric(h: 16, v: 36);
  }
}

class _BottomSheetModal extends GetView<ProfileController> {
  const _BottomSheetModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.profileFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Name'.text.make().p4(),
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
            child: Container(
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
                  return null;
                },
                controller: controller.nameController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
          ),
          24.heightBox,
          MaterialButton(
            onPressed: controller.updateUser,
            color: Get.theme.colorScheme.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              "Update",
              style: TextStyle(color: Colors.white),
            ).pSymmetric(h: 40, v: 15),
          ).centered(),
        ],
      ).pSymmetric(v: 36, h: 16),
    );
  }
}
