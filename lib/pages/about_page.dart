import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final fg = isDark ? Colors.white : Colors.indigo;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: fg.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.android, size: 56, color: fg),
            ),
          ),
          const SizedBox(height: 20),
          const Center(child: Text('Operit 介绍 App', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
          const SizedBox(height: 8),
          Text(
            '关于本应用',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          Text(
            '这是一个展示 Operit 全能 AI 助手能力的介绍应用。'
            '它本身由 Operit 编写 Flutter 代码，并通过 GitHub Actions 自动构建 APK 交付。',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          Text('技术栈', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('Material 3')),
              Chip(label: Text('GitHub Actions')),
            ],
          ),
          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 16),
          const Center(child: Text('Made with ❤ by Operit', style: TextStyle(fontWeight: FontWeight.w500))),
          const SizedBox(height: 8),
          Center(child: Text('Version 1.0.0', style: TextStyle(color: Colors.grey))),
        ],
      ),
    );
  }
}
