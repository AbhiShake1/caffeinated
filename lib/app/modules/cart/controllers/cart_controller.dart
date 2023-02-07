import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/esewa_config.dart';
import 'package:caffeinated/app/data/repo/cart_repo.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController
    with GetxServiceMixin, StateMixin<List<CartModel>> {
  late final CartRepo _repo;
  late final UserModel _user;
  late final TextEditingController searchController;

  UserModel get user => _user;

  final _cartTotal = 0.0.obs;
  final _uniqueLength = 0.obs;

  double get cartTotal => _cartTotal.value;

  int get uniqueLength => _uniqueLength.value;

  Future<void> checkout() async {
    await _pay();
  }

  Future<void> _pay() async {
    if (state?.isEmpty ?? true) return;

    final payment = EsewaPayment(
      productName: state!.map((e) => e.product.name).join(' '),
      productId: state!.map((e) => e.product.id).join(''),
      productPrice: cartTotal.toStringAsFixed(2),
    );

    EsewaFlutterSdk.initPayment(
      esewaConfig: esewaConfig,
      esewaPayment: payment,
      onPaymentSuccess: (result) async {
        final res = await _repo.order(uid: user.id);

        res.fold(
          (l) {},
          (r) => change([], status: RxStatus.success()),
        );
      },
      onPaymentFailure: (data) {},
      onPaymentCancellation: (data) {},
    );
  }

  @override
  void change(List<CartModel>? newState, {RxStatus? status}) {
    super.change(newState, status: status);

    if (newState?.isEmpty ?? true) {
      _uniqueLength.value = 0;
      _cartTotal.value = 0;
      return;
    }

    _uniqueLength.value = newState!.length;
    _cartTotal.value = newState
        .map((e) => e.quantity * e.product.price)
        .reduce((value, element) => value + element);
  }

  Future<void> addToCart(
    ProductModel product, {
    bool showSnackBar = false,
  }) async {
    change(state, status: RxStatus.loadingMore());

    final res = await _repo.addToCart(
      productId: product.id,
      uid: _user.id,
    );

    res.fold(
      (l) => Get.snackbar(
        'Something went wrong',
        l.message,
        backgroundColor: Get.theme.colorScheme.error,
      ),
      (r) {
        if (showSnackBar) {
          Get.snackbar(
            'Added to cart',
            '',
            backgroundColor: Colors.green,
          );
        }
        change(r, status: RxStatus.success());
      },
    );
  }

  Future<void> removeFromCart(ProductModel product) async {
    change(state, status: RxStatus.loadingMore());

    final res = await _repo.removeFromCart(
      productId: product.id,
      uid: _user.id,
    );

    res.fold(
      (l) => Get.snackbar(
        'Something went wrong',
        l.message,
        backgroundColor: Get.theme.colorScheme.error,
      ),
      (r) => change(r, status: RxStatus.success()),
    );
  }

  late List<CartModel> _cartItems;

  Future<void> loadCart() async {
    change(null, status: RxStatus.loading());

    final res = await _repo.getCart(uid: _user.id);

    res.fold(
      (l) => change(null, status: RxStatus.error(l.message)),
      (r) => change(_cartItems = r, status: RxStatus.success()),
    );
  }

  void _searchForItem() {
    if (searchController.text.isEmpty) {
      change(_cartItems, status: RxStatus.success());
    }

    final searched = state!
        .where(
          (e) => e.product.name.toLowerCase().contains(
                searchController.text.toLowerCase(),
              ),
        )
        .toList();

    change(searched, status: RxStatus.success());
  }

  @override
  void onInit() {
    _repo = Get.find<CartRepo>();
    _user = Get.find<UserModel>();
    searchController = TextEditingController()..addListener(_searchForItem);

    loadCart();
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
