import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/esewa_config.dart';
import 'package:caffeinated/app/data/repo/shop_repo.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopController extends GetxController
    with StateMixin<List<ProductModel>> {
  UserModel get user => _user;

  Future<void> loadProducts() async {
    change(null, status: RxStatus.loading());

    final res = await _repo.getAllProducts(uid: _user.id);
    res.fold(
      (l) {
        Get.snackbar(
          'Something went wrong',
          l.message,
          backgroundColor: Get.theme.colorScheme.error,
        );
        change(null, status: RxStatus.error(l.message));
      },
      (r) => change(r, status: RxStatus.success()),
    );
  }

  late final ShopRepo _repo;
  late final UserModel _user;
  late final TextEditingController searchController;

  final bookmarked = false.obs;

  void loadBookmarked(ProductModel item) => bookmarked.value = item.bookmarked;

  Future<void> toggleBookmark(ProductModel item) async {
    final res = await (item.bookmarked
        ? _repo.removeBookmark(productId: item.id, uid: user.id)
        : _repo.bookmark(productId: item.id, uid: user.id));

    res.fold(
      (l) => Get.snackbar(
        'Something went wrong',
        l.message,
        backgroundColor: Get.theme.colorScheme.error,
      ),
      (r) {
        bookmarked.toggle();
        change(
            state
                ?.map(
                  (e) => e.id == item.id
                      ? e.copyWith(bookmarked: !item.bookmarked)
                      : e,
                )
                .toList(),
            status: RxStatus.success());
      },
    );
  }

  Future<void> makePayment({
    required ProductModel item,
    required int quantity,
  }) async {
    final payment = EsewaPayment(
      productName: item.name,
      productId: item.id.toString(),
      productPrice: (item.price * quantity).toString(),
    );

    EsewaFlutterSdk.initPayment(
      esewaConfig: esewaConfig,
      esewaPayment: payment,
      onPaymentSuccess: (result) async {
        final res = await _repo.orderInstantly(
          uid: user.id,
          product: item,
          quantity: quantity,
        );

        res.fold(
          (l) => Get.snackbar(
            'Something went wrong',
            l.message,
            backgroundColor: Get.theme.colorScheme.error,
          ),
          (r) => null,
        );
      },
      onPaymentFailure: (data) {},
      onPaymentCancellation: (data) {},
    );
  }

  @override
  void onInit() {
    _repo = Get.find<ShopRepo>();
    _user = Get.find<UserModel>();
    searchController = TextEditingController();
    loadProducts();
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
