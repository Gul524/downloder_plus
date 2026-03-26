import 'package:downloder_plus/configs/app_color.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 88,
          width: 88,
          decoration: BoxDecoration(
            color: AppColor.primaryColor.withValues(alpha: 0.15),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.download_rounded, size: 44),
        ),
        const SizedBox(height: 16),
        const Text(
          'Downloader Plus',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text('YouTube, TikTok, Instagram, X'),
      ],
    );
  }
}
