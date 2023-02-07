import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:caffeinated/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FadeInUp(
        child: PhysicalModel(
          color: Colors.black,
          elevation: 5,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            // height: 100,
            width: Get.width / 1.1,
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Get.theme.colorScheme.primary,
                width: .5,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                'Total: '.text.make(),
                Obx(
                  () => controller.cartTotal.text.red500.bold.make(),
                ),
                const Spacer(),
                Material(
                  color: Get.theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: controller.checkout,
                    borderRadius: BorderRadius.circular(8),
                    child: Obx(
                      () => 'Check Out (${controller.uniqueLength})'
                          .text
                          .white
                          .bold
                          .make(),
                    ).p16(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: FadeInDown(
          child: CircleAvatar(
            backgroundColor: Get.theme.colorScheme.primary,
            radius: 18,
            child: controller.user.name[0].capitalized.text.white.xl3.make(),
          ),
        ),
        actions: [
          FadeInDown(
            child: IconButton(
              onPressed: () => Get.toNamed(Routes.NOTIFICATION),
              icon: Icon(
                CupertinoIcons.bell,
                color: Get.theme.colorScheme.primary,
                size: 32,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: FadeInRight(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(
                    CupertinoIcons.search_circle_fill,
                    color: Get.theme.colorScheme.primary,
                    size: 52,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: controller.obx(
        (state) {
          return RefreshIndicator(
            onRefresh: controller.loadCart,
            child: ListView.separated(
              separatorBuilder: (context, index) => 12.heightBox,
              itemCount: state!.length,
              itemBuilder: (context, index) {
                final item = state[index];
                final duration = ((index % 8 + 1) * 300).milliseconds;

                return TweenAnimationBuilder<double>(
                  tween: Tween(
                    begin: 0,
                    end: 1,
                  ),
                  duration: duration,
                  builder: (context, value, child) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Get.theme.colorScheme.primaryContainer
                              .withOpacity(value),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: Get.theme.colorScheme.inversePrimary
                            .withOpacity(value),
                      ),
                      child: child!,
                    );
                  },
                  child: FadeInLeft(
                    duration: duration,
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl: item.product.imageUrl,
                          width: 64,
                          height: 64,
                        ),
                        12.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            item.product.name.text.bold.make(),
                            4.heightBox,
                            '${item.product.description}'.text.gray600.make(),
                            8.heightBox,
                            'Rs. ${item.product.price}'
                                .text
                                .tight
                                .size(12)
                                .red500
                                .bold
                                .make(),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Get.theme.scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.removeFromCart(item.product);
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    size: 22,
                                    color: Get.theme.colorScheme.primary,
                                  ),
                                ),
                                AnimatedSwitcher(
                                  duration: 200.milliseconds,
                                  transitionBuilder: (child, animation) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(0, -1),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  child: Text(
                                    item.quantity.toString(),
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    key: ValueKey(item.quantity),
                                  ),
                                ).px12(),
                                InkWell(
                                  onTap: () {
                                    controller.addToCart(item.product);
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 22,
                                    color: Get.theme.colorScheme.primary,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).p16(),
          );
        },
      ),
    );
  }
}
