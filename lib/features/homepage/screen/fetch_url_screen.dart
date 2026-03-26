import 'package:downloder_plus/features/homepage/controller/home_controller.dart';
import 'package:downloder_plus/sharedWidgets/url_input_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FetchUrlScreen extends StatelessWidget {
  const FetchUrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    final Map<String, dynamic> args =
        (Get.arguments as Map<String, dynamic>?) ?? <String, dynamic>{};
    final String platform = (args['name'] as String?) ?? 'Platform';
    final int colorValue = (args['color'] as int?) ?? Colors.blue.toARGB32();
    final Color platformColor = Color(colorValue);
    final Brightness iconBrightness = ThemeData.estimateBrightnessForColor(
      platformColor,
    );
    final Color onPlatformColor =
        iconBrightness == Brightness.dark ? Colors.white : Colors.black;

    final ThemeData baseTheme = Theme.of(context);
    final ColorScheme localScheme = ColorScheme.fromSeed(
      seedColor: platformColor,
      brightness: baseTheme.brightness,
    );

    return Theme(
      data: baseTheme.copyWith(colorScheme: localScheme),
      child: Scaffold(
        appBar: AppBar(
          title: Text('$platform URL'),
          backgroundColor: platformColor,
          foregroundColor: onPlatformColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: UrlInputCard(
            controller: homeController.urlController,
            onAnalyze: homeController.fetchUrl,
          ),
        ),
      ),
    );
  }
}
