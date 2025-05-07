import 'package:downloder_plus/configs/appColor.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'All in One Downloader ',
              style: TextStyle(fontSize: 16, color: Appcolor.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
