import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: controller.loadNotifications,
        child: controller.obx(
          (state) => ListView.builder(
            itemCount: state!.length,
            itemBuilder: (context, index) {
              final item = state[index];

              return Dismissible(
                onDismissed: (_) async {
                  await controller.deleteNotification(item.id);
                },
                background: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: const EdgeInsets.only(right: 16),
                  margin: const EdgeInsets.only(bottom: 16),
                  color: Get.theme.colorScheme.error,
                  child: const Icon(
                    CupertinoIcons.delete,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                direction: DismissDirection.endToStart,
                key: ValueKey(item.id),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: item.title.text.extraBlack.extraBold.make(),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.description.text.make(),
                          12.heightBox,
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.clock,
                                size: 12,
                                color: Colors.grey,
                              ),
                              2.widthBox,
                              DateFormat('MMM dd, h:m a')
                                  .format(item.createdAt)
                                  .text
                                  .size(12)
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (index < state.length - 1)
                      Divider(
                        color: Get.theme.colorScheme.secondaryContainer
                            .withOpacity(.6),
                      ),
                  ],
                ),
              );
            },
          ).px16(),
        ),
      ),
    );
  }
}
