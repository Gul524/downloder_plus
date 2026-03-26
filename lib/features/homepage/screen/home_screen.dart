import 'package:downloder_plus/features/homepage/controller/home_controller.dart';
import 'package:downloder_plus/sharedWidgets/url_input_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(title: const Text('Downloader Plus')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: UrlInputCard(
          controller: homeController.urlController,
          onAnalyze: homeController.fetchUrl,
        ),
      ),
    );
  }
}
