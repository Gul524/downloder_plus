import 'package:flutter/material.dart';

class PlatformBadge extends StatelessWidget {
  const PlatformBadge({super.key, required this.platform});

  final String platform;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.link_rounded, size: 18),
          const SizedBox(width: 8),
          Text('Detected: $platform'),
        ],
      ),
    );
  }
}
