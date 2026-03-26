import 'package:flutter/material.dart';

class PlatformGrid extends StatelessWidget {
  const PlatformGrid({
    super.key,
    required this.platforms,
    required this.selectedPlatform,
    required this.onTap,
  });

  final List<String> platforms;
  final String selectedPlatform;
  final ValueChanged<String> onTap;

  IconData _iconFor(String platform) {
    switch (platform.toLowerCase()) {
      case 'youtube':
        return Icons.ondemand_video_rounded;
      case 'tiktok':
        return Icons.music_note_rounded;
      case 'instagram':
        return Icons.photo_camera_rounded;
      case 'x':
        return Icons.alternate_email_rounded;
      case 'twitter':
        return Icons.flutter_dash_rounded;
      default:
        return Icons.link_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: platforms.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.15,
      ),
      itemBuilder: (context, index) {
        final String platform = platforms[index];
        final bool isSelected = platform == selectedPlatform;

        return InkWell(
          onTap: () => onTap(platform),
          borderRadius: BorderRadius.circular(12),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:
                  isSelected
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.surfaceContainerHighest,
              border: Border.all(
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).dividerColor,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_iconFor(platform)),
                const SizedBox(height: 8),
                Text(
                  platform,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
