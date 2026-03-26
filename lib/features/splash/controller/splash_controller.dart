import 'package:downloder_plus/configs/constants/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future<void>.delayed(const Duration(seconds: 2), () {
      if (Get.currentRoute == AppRoutes.splash) {
        Get.offNamed(AppRoutes.home);
      }
    });
  }
}
