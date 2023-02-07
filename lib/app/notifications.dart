import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:caffeinated/app/data/repo/user_repo.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FirebaseNotification {
  static const _channel = AndroidNotificationChannel(
    'caffeinated_default_channel',
    'High Importance Notifications',
    importance: Importance.max,
    showBadge: true,
    playSound: true,
    enableVibration: true,
  );

  // default icon for notification
  static const _initializationSettingsAndroid =
      AndroidInitializationSettings('mipmap/ic_launcher');

  static const _initializationSettingsIOS = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  static const _initializationSettings = InitializationSettings(
    android: _initializationSettingsAndroid,
    iOS: _initializationSettingsIOS,
  );

  static final _plugin = FlutterLocalNotificationsPlugin();

  static final _user = UserModel.fromJson(_storage.read('current_user_key'));

  static final _storage = Get.find<GetStorage>();
  static final _repo = Get.find<UserRepo>();

  static Future<void> _showNotification(
    RemoteMessage message,
  ) async {
    debugPrint('Message data: ${message.data}');
    final notification = message.notification;
    final android = message.notification?.android;

    // If `onMessage` is triggered with a notification, construct our own
    // local notification to show to users using the created channel.
    if (notification != null && android != null && !kIsWeb) {
      _plugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            enableLights: true,
            sound: _channel.sound,
            priority: Priority.high,
            importance: Importance.max,
            enableVibration: false,
            playSound: false,
            visibility: NotificationVisibility.public,
          ),
        ),
        payload: 'Default payload',
      );
    }
  }

  static Future<void> _refreshToken([
    String? token,
  ]) async {
    var savedToken = _user.fcmToken;

    if (token != null || savedToken == null || savedToken == 'null') {
      savedToken = token ?? (await FirebaseMessaging.instance.getToken());
      final newUser = _user.copyWith(fcmToken: savedToken);
      _repo.update(newUser);
      await _storage.write('current_user_key', newUser);
    }
  }

  static Future<void> init() async {
    _refreshToken();

    // get FCM Token
    FirebaseMessaging.instance.onTokenRefresh.listen(_refreshToken);

    // permission is required for iOS apps only
    await FirebaseMessaging.instance.requestPermission(
      criticalAlert: true,
      sound: true,
      badge: true,
    );

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      sound: true,
      badge: true,
    );

    await _plugin.initialize(
      _initializationSettings,
    );

    // foreground message
    FirebaseMessaging.onMessage.listen(_showNotification);

    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    // FirebaseMessaging.onBackgroundMessage(showNotification);
  }
}
