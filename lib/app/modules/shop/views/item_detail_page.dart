import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:caffeinated/app/modules/cart/controllers/cart_controller.dart';
import 'package:caffeinated/app/modules/shop/controllers/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetailPage extends StatefulWidget {
  final ProductModel item;

  const ItemDetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _controller;
  late Animation<double> _price;

  late final ShopController _shopController;
  late final CartController _cartController;

  int numCount = 1;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _shopController = Get.find<ShopController>();
    _shopController.loadBookmarked(widget.item);
    _cartController = Get.find<CartController>();
    _controller = AnimationController(
      vsync: this,
      duration: 500.milliseconds,
    );
    _price =
        Tween<double>(begin: 0, end: widget.item.price).animate(_controller)
          ..addListener(() {
            if (mounted) {
              setState(() {});
            }
          });
    _timer = Timer(850.milliseconds, () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: he * 0.38,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(
              vertical: 36,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(65),
              ),
              gradient: LinearGradient(
                colors: [
                  Get.theme.colorScheme.primary,
                  Get.theme.colorScheme.secondary,
                ],
                stops: const [.3, .8],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _shopController.bookmarked.value
                            ? Colors.red
                            : Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () =>
                          _shopController.toggleBookmark(widget.item),
                      icon: Icon(
                        Icons.favorite,
                        color: _shopController.bookmarked.value
                            ? Colors.red
                            : Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: he * 0.47),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeIn(
                  delay: 400.milliseconds,
                  child: Container(
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 16,
                        ),
                        Text(
                          widget.item.rating.toString(),
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeIn(
                      delay: 700.milliseconds,
                      child: Text(
                        widget.item.name,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: FadeIn(
                        delay: 850.milliseconds,
                        child: Text(
                          "Rs. ${(_price.value * numCount).round()}",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: he * 0.05,
                ),
                FadeIn(
                  delay: 500.milliseconds,
                  child: const Text(
                    'About',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: he * 0.01,
                ),
                FadeIn(
                  delay: 1.seconds,
                  child: Text(
                    widget.item.description ?? '',
                  ),
                ),
                SizedBox(
                  height: he * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInRight(
                      delay: 1600.milliseconds,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: Get.theme.colorScheme.primaryContainer,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                if (numCount > 1) {
                                  setState(() {
                                    numCount--;
                                  });
                                  _controller
                                    ..reset()
                                    ..forward();
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                size: 28,
                                color: Get.theme.colorScheme.primary,
                              ),
                            ),
                            Text(
                              numCount.toString(),
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ).px16(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  numCount++;
                                });
                                _controller
                                  ..reset()
                                  ..forward();
                              },
                              child: Icon(
                                Icons.add,
                                size: 28,
                                color: Get.theme.colorScheme.primary,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox(height: he * 0.04)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(),
                      Flexible(
                        flex: 6,
                        child: FadeIn(
                          delay: 1500.milliseconds,
                          child: Ink(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                width: 2,
                                color: Get.theme.colorScheme.primaryContainer,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () => _cartController.addToCart(
                                widget.item,
                                showSnackBar: true,
                              ),
                              child: Container(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    color: Get.theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).centered().p24(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      Flexible(
                        flex: 6,
                        child: FadeIn(
                          delay: 2200.milliseconds,
                          child: Ink(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Get.theme.colorScheme.primary,
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () => _shopController.makePayment(
                                item: widget.item,
                                quantity: numCount,
                              ),
                              child: FadeInLeft(
                                delay: 1700.milliseconds,
                                child: const Text(
                                  'ORDER NOW!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).centered().py24(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ).px16(),
          ),
          Positioned(
            left: 50,
            top: 90,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2, 10),
                    blurRadius: 60,
                  )
                ],
              ),
              child: Hero(
                tag: widget.item.id,
                child: PhysicalModel(
                  elevation: 10,
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Get.theme.colorScheme.primary,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          widget.item.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
