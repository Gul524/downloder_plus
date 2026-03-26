import 'package:downloder_plus/services/downloader/downloader_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController urlController = TextEditingController();
  final DownloaderService _downloaderService = DownloaderService();

  Future<void> fetchUrl() async {
    final String url = urlController.text.trim();
    if (url.isEmpty) {
      Get.snackbar('Missing URL', 'Please paste a valid URL first.');
      return;
    }

    try {
      final VideoInfo info = await _downloaderService.getVideoByUrl(url);
      final String durationText =
          info.duration == null
              ? 'Unknown duration'
              : '${info.duration!.inMinutes}m ${info.duration!.inSeconds % 60}s';

      Get.snackbar('Fetched', '${info.title}\n$durationText');
    } catch (error) {
      Get.snackbar(
        'Fetch failed',
        error.toString().replaceFirst('Exception: ', ''),
      );
    }
  }

  @override
  void onClose() {
    urlController.dispose();
    super.onClose();
  }
}
