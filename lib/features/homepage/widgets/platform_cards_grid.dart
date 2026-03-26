import 'package:flutter/material.dart';

class PlatformCardsGrid extends StatelessWidget {
  const PlatformCardsGrid({super.key, required this.onPlatformTap});

  final ValueChanged<PlatformCardData> onPlatformTap;

  static const List<PlatformCardData> _platforms = <PlatformCardData>[
    PlatformCardData(
      name: 'YouTube',
      icon: Icons.play_circle_fill_rounded,
      color: Color(0xFFFF0000),
    ),
    PlatformCardData(
      name: 'TikTok',
      icon: Icons.music_note_rounded,
      color: Color(0xFF111111),
    ),
    PlatformCardData(
      name: 'Instagram',
      icon: Icons.camera_alt_rounded,
      color: Color(0xFFE1306C),
    ),
    PlatformCardData(
      name: 'X',
      icon: Icons.alternate_email_rounded,
      color: Color(0xFF000000),
    ),
    PlatformCardData(
      name: 'Twitter',
      icon: Icons.flutter_dash_rounded,
      color: Color(0xFF1DA1F2),
    ),
    PlatformCardData(
      name: 'Other',
      icon: Icons.link_rounded,
      color: Color(0xFF6B7280),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _platforms.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.12,
      ),
      itemBuilder: (BuildContext context, int index) {
        final PlatformCardData item = _platforms[index];

        return InkWell(
          onTap: () => onPlatformTap(item),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              color: item.color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: item.color, size: 30),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PlatformCardData {
  const PlatformCardData({
    required this.name,
    required this.icon,
    required this.color,
  });

  final String name;
  final IconData icon;
  final Color color;
}
