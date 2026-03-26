import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideoInfo {
  const VideoInfo({
    required this.platform,
    required this.id,
    required this.title,
    required this.author,
    required this.duration,
    required this.thumbnailUrl,
    required this.originalUrl,
  });

  final String platform;
  final String id;
  final String title;
  final String author;
  final Duration? duration;
  final String thumbnailUrl;
  final String originalUrl;
}

class DownloaderService {
  Future<VideoInfo> getVideoByUrl(String url) async {
    final String normalizedUrl = url.trim();
    if (normalizedUrl.isEmpty) {
      throw Exception('URL is empty.');
    }

    final String lower = normalizedUrl.toLowerCase();
    if (lower.contains('youtube.com') || lower.contains('youtu.be')) {
      return _getYoutubeVideoInfo(normalizedUrl);
    }

    throw UnimplementedError(
      'This URL is not supported yet. Currently supported: YouTube.',
    );
  }

  Future<VideoInfo> _getYoutubeVideoInfo(String url) async {
    final YoutubeExplode yt = YoutubeExplode();
    try {
      final Video video = await yt.videos.get(url);
      return VideoInfo(
        platform: 'YouTube',
        id: video.id.value,
        title: video.title,
        author: video.author,
        duration: video.duration,
        thumbnailUrl: video.thumbnails.highResUrl,
        originalUrl: url,
      );
    } finally {
      yt.close();
    }
  }

  Future<void> downloadFromUrl({
    required String url,
    required String format,
    String? resolution,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 600));
  }
}
