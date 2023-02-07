import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/exceptions/server_exception.dart';
import 'package:caffeinated/app/data/request_models/password_reset_request_model/password_reset_request_model.dart';
import 'package:caffeinated/app/data/request_models/signin_request_model/signin_request_model.dart';
import 'package:caffeinated/app/data/request_models/signup_request_model/signup_request_model.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class AuthRepo extends GetxService {
  AuthRepo(this._restClient);

  final RestClient _restClient;

  Future<Either<ServerException, UserModel>> signIn(
    SigninRequestModel signinModel,
  ) async {
    try {
      final res = await _restClient.login(signinModel);
      if (res.error == null) {
        return Right(res.data!);
      }

      return Left(ServerException(res.error!));
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, UserModel>> signup(
    SignupRequestModel signupModel,
  ) async {
    try {
      final res = await _restClient.signup(signupModel);

      if (res.error == null) {
        return Right(res.data!);
      }

      return Left(ServerException(res.error!));
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, String>> sendPasswordResetEmail(
    String email,
  ) async {
    try {
      final res = await _restClient.sendPasswordResetEmail(
        PasswordResetRequestModel(
          email: email,
        ),
      );
      if (res.error == null) {
        return Right(res.message!);
      }
      return Left(ServerException(res.error!));
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
