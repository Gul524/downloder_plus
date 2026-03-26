import 'package:flutter/material.dart';

class DownloadOptionTile extends StatelessWidget {
  const DownloadOptionTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.items,
  });

  final String title;
  final String value;
  final ValueChanged<String?> onChanged;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          initialValue: value,
          decoration: const InputDecoration(),
          items:
              items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ),
                  )
                  .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
