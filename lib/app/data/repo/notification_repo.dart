import 'package:caffeinated/app/data/data_models/notification_model/notification_model.dart';
import 'package:caffeinated/app/data/exceptions/server_exception.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:dartz/dartz.dart';

class NotificationRepo {
  const NotificationRepo(this._client);

  final RestClient _client;

  Future<Either<ServerException, List<NotificationModel>>> getNotifications({
    required int userId,
  }) async {
    try {
      final res = await _client.getNotifications(uid: userId);

      if (res.error != null) throw res.error!;

      return Right(res.data!);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  Future<Either<ServerException, void>> deleteNotification(
    int notificationId,
  ) async {
    try {
      final res = await _client.deleteNotification(
        id: notificationId,
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
