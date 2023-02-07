import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:caffeinated/app/data/repo/auth_repo.dart';
import 'package:caffeinated/app/data/rest_client.dart';
import 'package:get_storage/get_storage.dart';

class RestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStorage>(() => GetStorage());
    final client = RestClient(
      Dio()
        ..options = BaseOptions(
          validateStatus: (status) => (status ?? 0) < 500,
        ),
    );
    Get.lazyPut<RestClient>(() => client);
    Get.lazyPut<AuthRepo>(() => AuthRepo(client));
  }
}
