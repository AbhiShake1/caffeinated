import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/exceptions/server_exception.dart';
import 'package:caffeinated/app/data/request_models/change_password_request_model/change_password_request_model.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class UserRepo extends GetxService {
  UserRepo(this._client);

  final RestClient _client;

  Future<Either<ServerException, UserModel>> update(
    UserModel user,
  ) async {
    try {
      final res = await _client.updateUser(user);
      if (res.error != null) {
        return Left(ServerException(res.error.toString()));
      }
      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, String>> changePassword({
    required int userId,
    required String oldPassword,
    required String newPassword,
  }) async {
    final model = ChangePasswordRequestModel(
      userId: userId,
      newPassword: newPassword,
      oldPassword: oldPassword,
    );
    try {
      final res = await _client.changePassword(model);
      if (res.error != null) {
        throw res.error!;
      }
      return Right(res.message!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, void>> logout() async {
    try {
      final res = await _client.logout();
      return Right(res);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
