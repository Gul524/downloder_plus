import 'package:downloder_plus/pages/splashPage.dart';
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

    );
  }
}

List<GetPage> pages = [
  GetPage(
    name: '/',
    page: () => const SplashPage(),
  ),
  // GetPage(
  //   name: '/second',
  //   page: () => const SecondPage(),
  // ),
];