import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/request_models/cart_request_model/cart_request_model.dart';
import 'package:caffeinated/app/data/request_models/change_password_request_model/change_password_request_model.dart';
import 'package:caffeinated/app/data/request_models/instant_order_request_model/instant_order_request_model.dart';
import 'package:caffeinated/app/data/request_models/password_reset_request_model/password_reset_request_model.dart';
import 'package:caffeinated/app/data/request_models/signin_request_model/signin_request_model.dart';
import 'package:caffeinated/app/data/request_models/signup_request_model/signup_request_model.dart';
import 'package:caffeinated/app/data/response_models/bookmark_response_model/bookmark_response_model.dart';
import 'package:caffeinated/app/data/response_models/cart_response_model/cart_response_model.dart';
import 'package:caffeinated/app/data/response_models/change_password_response_model/change_password_response_model.dart';
import 'package:caffeinated/app/data/response_models/get_product_with_uid_response_model/get_product_with_uid_response_model.dart';
import 'package:caffeinated/app/data/response_models/get_products_response_model/get_products_response_model.dart';
import 'package:caffeinated/app/data/response_models/notification_response_model/notification_response_model.dart';
import 'package:caffeinated/app/data/response_models/order_response_model/order_response_model.dart';
import 'package:caffeinated/app/data/response_models/password_reset_response_model/password_reset_response_model.dart';
import 'package:caffeinated/app/data/response_models/user_response_model/user_response_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

// @RestApi(baseUrl: 'http://192.168.1.13:8000')
@RestApi(baseUrl: 'https://caffeinated-madhu.onrender.com')
abstract class RestClient with GetxServiceMixin {
  factory RestClient(Dio dio) = _RestClient;

  @POST('/auth/login/')
  Future<UserResponseModel> login(
    @Body() SigninRequestModel loginRequest,
  );

  @POST('/auth/signup/')
  Future<UserResponseModel> signup(
    @Body() SignupRequestModel signupRequest,
  );

  @GET('/auth/logout')
  Future<void> logout();

  @GET('/user')
  Future<UserResponseModel> getCurrentDropshipper();

  @PUT('/user/')
  Future<UserResponseModel> updateUser(
    @Body() UserModel user,
  );

  @POST('/auth/send-reset-link/')
  Future<PasswordResetResponseModel> sendPasswordResetEmail(
    @Body() PasswordResetRequestModel passwordResetRequestModel,
  );

  @POST('/auth/change-password/')
  Future<ChangePasswordResponseModel> changePassword(
    @Body() ChangePasswordRequestModel changePasswordRequestModel,
  );

  @GET('/product/{id}/for_uid/')
  Future<GetProductWithUidResponseModel> getProduct({
    @Path('id') required int productId,
    @Query('uid') required int uid,
  });

  @GET('/product/all/')
  Future<GetProductsResponseModel> getAllProducts({
    @Query('uid') required int uid,
  });

  @GET('/product/all_bookmarked/for_uid/')
  Future<GetProductsResponseModel> getAllBookmarkedProducts({
    @Query('uid') required int uid,
  });

  @GET('/product/{id}/bookmark/')
  Future<BookmarkResponseModel> bookmark({
    @Path('id') required int productId,
    @Query('uid') required int uid,
  });

  @GET('/product/{id}/remove_bookmark/')
  Future<BookmarkResponseModel> removeBookmark({
    @Path('id') required int productId,
    @Query('uid') required int uid,
  });

  @POST('/cart/add_to_cart/')
  Future<CartResponseModel> addToCart({
    @Query('uid') required int uid,
    @Body() required CartRequestModel cartRequestModel,
  });

  @GET('/cart/get_cart/')
  Future<CartResponseModel> getCart({
    @Query('uid') required int uid,
  });

  @DELETE('/cart/remove_from_cart/')
  Future<CartResponseModel> removeFromCart({
    @Query('uid') required int uid,
    @Body() required CartRequestModel cartRequestModel,
  });

  @DELETE('/cart/clear_cart/')
  Future<CartResponseModel> clearCart({
    @Query('uid') required int uid,
  });

  @POST('/order/create_instant_order/')
  Future<OrderResponseModel> orderInstantly({
    @Query('uid') required int uid,
    @Body() required InstantOrderRequestModel carts,
  });

  @POST('/order/')
  Future<OrderResponseModel> order({
    @Query('uid') required int uid,
  });

  @GET('/notification/')
  Future<NotificationResponseModel> getNotifications({
    @Query('uid') required int uid,
  });

  @DELETE('/notification/{id}/')
  Future<void> deleteNotification({
    @Path('id') required int id,
  });
}
