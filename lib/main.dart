import 'package:downloder_plus/configs/constants/app_routes.dart';
import 'package:downloder_plus/configs/theme/app_theme.dart';
import 'package:downloder_plus/features/homepage/screen/fetch_url_screen.dart';
import 'package:downloder_plus/features/homepage/screen/home_screen.dart';
import 'package:downloder_plus/features/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Downloader Plus',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.splash,
      getPages: pages,
    );
  }
}

List<GetPage> pages = [
  GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  GetPage(name: AppRoutes.fetch, page: () => const FetchUrlScreen()),
];
