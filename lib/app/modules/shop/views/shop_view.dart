import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:caffeinated/app/modules/shop/controllers/shop_controller.dart';
import 'package:caffeinated/app/modules/shop/views/item_detail_page.dart';
import 'package:caffeinated/app/routes/app_pages.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopView extends StatefulWidget {
  const ShopView({
    Key? key,
    this.predicate,
  }) : super(key: key);

  final bool Function(ProductModel item)? predicate;

  @override
  State createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  late ShopController _shopController;

  @override
  void initState() {
    super.initState();
    _shopController = Get.find<ShopController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: FadeInRight(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                controller: _shopController.searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    CupertinoIcons.search_circle_fill,
                    color: Get.theme.colorScheme.primary,
                    size: 52,
                  ),
                  filled: true,
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
        title: FadeInDown(
          child: CircleAvatar(
            backgroundColor: Get.theme.colorScheme.primary,
            radius: 18,
            child:
                _shopController.user.name[0].capitalized.text.white.xl3.make(),
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
      ),
      body: Column(
        children: [
          const Spacer(flex: 3),
          Flexible(
            fit: FlexFit.tight,
            flex: 20,
            child: _shopController.obx(
              (item) => _Swiper(item, predicate: widget.predicate),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}

class _Swiper extends StatefulWidget {
  const _Swiper(
    this._items, {
    Key? key,
    this.predicate,
  }) : super(key: key);

  final List<ProductModel>? _items;
  final bool Function(ProductModel item)? predicate;

  @override
  State<_Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<_Swiper>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  String icon = '';

  late Animation<double> _price;
  late AnimationController _controller;
  late ShopController _shopController;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _refresh() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _shopController = Get.find<ShopController>();
    _shopController.searchController.addListener(_refresh);
    _controller = AnimationController(
      vsync: this,
      duration: 600.milliseconds,
    );
    _price = Tween<double>(begin: 0, end: 1).animate(_controller);

    _price.addListener(_refresh);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var items = [...?widget._items];

    if (widget.predicate != null) {
      items = items.where(widget.predicate!).toList();
    }

    if (_shopController.searchController.text.isNotEmpty) {
      items = items
          .where(
            (i) => i.name.toLowerCase().contains(
                  _shopController.searchController.text.toLowerCase(),
                ),
          )
          .toList();
    }

    return Column(
      children: [
        Expanded(
          child: Swiper(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            viewportFraction: .8,
            onIndexChanged: (_) => _controller
              ..reset()
              ..forward(),
            scale: .85,
            itemBuilder: (_, i) {
              final item = items[i];
              return Stack(
                children: [
                  Column(
                    children: [
                      const Spacer(flex: 2),
                      Flexible(
                        flex: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Get.theme.colorScheme.primary,
                                Get.theme.colorScheme.secondary,
                              ],
                              stops: const [.4, .9],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(flex: 25),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 15,
                                  child: Text(
                                    item.name,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 2),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 15,
                                  child: Container(
                                    width: 70,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        8.widthBox,
                                        Text(
                                          item.rating.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 23),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 20,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ' Rs. ${(_price.value * item.price).round()}',
                                        style: const TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.to(
                                          () => ItemDetailPage(item: item),
                                          transition: Transition.rightToLeft,
                                        ),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Get.theme.colorScheme
                                                .inversePrimary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: FlipInX(
                      child: Roulette(
                        delay: const Duration(milliseconds: 230),
                        child: Hero(
                          tag: item.id,
                          child: PhysicalModel(
                            elevation: 10,
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Get.theme.colorScheme.primary,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    item.imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
