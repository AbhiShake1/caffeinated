import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:caffeinated/app/data/data_models/order_model/order_model.dart';
import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:caffeinated/app/data/exceptions/server_exception.dart';
import 'package:caffeinated/app/data/request_models/instant_order_request_model/instant_order_request_model.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class ShopRepo extends GetxService {
  ShopRepo(this._client);

  final RestClient _client;

  Future<Either<ServerException, ProductModel>> getProduct({
    required int productId,
    required int uid,
  }) async {
    try {
      final res = await _client.getProduct(productId: productId, uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<ProductModel>>> getAllProducts({
    required int uid,
  }) async {
    try {
      final res = await _client.getAllProducts(uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<ProductModel>>> getAllBookmarkedProducts({
    required int uid,
  }) async {
    try {
      final res = await _client.getAllBookmarkedProducts(uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, String>> bookmark({
    required int productId,
    required int uid,
  }) async {
    try {
      final res = await _client.bookmark(productId: productId, uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.message!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, String>> removeBookmark({
    required int productId,
    required int uid,
  }) async {
    try {
      final res = await _client.removeBookmark(productId: productId, uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.message!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<OrderModel>>> orderInstantly({
    required int uid,
    required ProductModel product,
    required int quantity,
  }) async {
    try {
      final model = InstantOrderRequestModel(carts: [
        CartModel(product: product, quantity: quantity),
      ]);
      final res = await _client.orderInstantly(uid: uid, carts: model);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
