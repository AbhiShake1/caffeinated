import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:caffeinated/app/data/data_models/order_model/order_model.dart';
import 'package:caffeinated/app/data/exceptions/server_exception.dart';
import 'package:caffeinated/app/data/request_models/cart_request_model/cart_request_model.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class CartRepo extends GetxService {
  CartRepo(this._client);

  final RestClient _client;

  Future<Either<ServerException, List<CartModel>>> addToCart({
    required int productId,
    required int uid,
  }) async {
    try {
      final model = CartRequestModel(productId: productId);
      final res = await _client.addToCart(
        uid: uid,
        cartRequestModel: model,
      );
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<CartModel>>> getCart({
    required int uid,
  }) async {
    try {
      final res = await _client.getCart(uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<CartModel>>> removeFromCart({
    required int uid,
    required int productId,
  }) async {
    try {
      final model = CartRequestModel(productId: productId);
      final res = await _client.removeFromCart(
        uid: uid,
        cartRequestModel: model,
      );
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<CartModel>>> clearCart({
    required int productId,
    required int uid,
  }) async {
    try {
      final res = await _client.clearCart(uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, List<OrderModel>>> order({
    required int uid,
  }) async {
    try {
      final res = await _client.order(uid: uid);
      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
