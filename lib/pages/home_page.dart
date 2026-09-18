import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final fg = isDark ? Colors.white : scheme.primary;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 标题
          Text(
            'Operit',
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.w900, color: fg),
          ),
          const SizedBox(height: 8),
          Text(
            '你的全能 AI 助手',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 32),

          // 核心介绍卡片
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.auto_awesome, color: fg),
                      const SizedBox(width: 8),
                      Text('什么是 Operit？', style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Operit 是一个运行在 Android 设备上的全能 AI 助手。'
                    '它不仅能聊天问答，还可以操控设备、读写文件、执行代码、'
                    '管理应用，甚至调用丰富的功能包完成复杂任务。',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 能力标签
          Text('核心能力', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
              _Chip(icon: Icons.code, label: '代码编写', color: Colors.orange),
              _Chip(icon: Icons.folder, label: '文件管理', color: Colors.blue),
              _Chip(icon: Icons.phone_android, label: '设备操控', color: Colors.teal),
              _Chip(icon: Icons.search, label: '联网搜索', color: Colors.deepPurple),
              _Chip(icon: Icons.storage, label: '记忆存取', color: Colors.pink),
              _Chip(icon: Icons.security, label: '安全渗透', color: Colors.red),
              _Chip(icon: Icons.flutter_dash, label: 'App 开发', color: Colors.lightBlue),
              _Chip(icon: Icons.http, label: 'HTTP 调用', color: Colors.indigo),
            ],
          ),
          const SizedBox(height: 32),

          // 底部标语
          Center(
            child: Text(
              '用 Flutter 构建 · Powered by Operit',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.label, required this.color});
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 18, color: color),
      label: Text(label),
      side: BorderSide(color: color.withOpacity(0.4)),
    );
  }
}
