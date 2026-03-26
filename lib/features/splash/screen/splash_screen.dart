import 'package:downloder_plus/features/splash/controller/splash_controller.dart';
import 'package:downloder_plus/features/splash/widgets/splash_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(body: Center(child: SplashLogo()));
  }
}
