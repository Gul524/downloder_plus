import 'package:downloder_plus/configs/constants/app_routes.dart';
import 'package:downloder_plus/features/homepage/widgets/platform_cards_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Downloader Plus')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: PlatformCardsGrid(
          onPlatformTap: (platform) {
            Get.toNamed(
              AppRoutes.fetch,
              arguments: <String, dynamic>{
                'name': platform.name,
                'color': platform.color.toARGB32(),
              },
            );
          },
        ),
      ),
    );
  }
}
