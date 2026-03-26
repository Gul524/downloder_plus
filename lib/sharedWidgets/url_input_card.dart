import 'package:flutter/material.dart';

class UrlInputCard extends StatelessWidget {
  const UrlInputCard({
    super.key,
    required this.controller,
    required this.onAnalyze,
  });

  final TextEditingController controller;
  final VoidCallback onAnalyze;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Paste media URL',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'https://youtube.com/... or https://tiktok.com/...',
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onAnalyze,
                child: const Text('Fetch'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
