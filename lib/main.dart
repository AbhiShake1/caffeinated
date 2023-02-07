import 'dart:async';

import 'package:caffeinated/app/bindings/rest_bindings.dart';
import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();
  await Firebase.initializeApp();

  runApp(
    GetMaterialApp(
      initialBinding: RestBinding(),
      onReady: () {
        final storage = GetStorage();
        final userMap = storage.read<Map<String, dynamic>>('current_user_key');
        if (userMap != null) {
          final user = UserModel.fromJson(userMap);
          Get.lazyPut<UserModel>(() => user);
          Get.offAllNamed(Routes.HOME);
        }
      },
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        typography: Typography.material2021(),
        textTheme: GoogleFonts.comicNeueTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
      title: "Caffeinated",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
