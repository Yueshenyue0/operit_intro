import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        Text('能力展示', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
        SizedBox(height: 8),
        Text('Operit 能为你做的事', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 24),

        _FeatureCard(
          icon: Icons.chat_bubble,
          color: Colors.blue,
          title: '智能对话',
          desc: '自然语言交流，理解意图，解答问题，帮助思考与创作。',
        ),
        _FeatureCard(
          icon: Icons.code,
          color: Colors.orange,
          title: '代码与开发',
          desc: '编写、调试、执行多种编程语言，开发 Flutter App 并交付。',
        ),
        _FeatureCard(
          icon: Icons.folder_open,
          color: Colors.green,
          title: '文件操作',
          desc: '读写、转换、打包各类文件，管理 Android 本地存储。',
        ),
        _FeatureCard(
          icon: Icons.travel_explore,
          color: Colors.purple,
          title: '联网检索',
          desc: '多平台搜索、抓取网页内容，获取最新信息与资料。',
        ),
        _FeatureCard(
          icon: Icons.settings,
          color: Colors.teal,
          title: '设儇操控',
          desc: '调用系统能力：设置、通知、应用、UI 自动化、Shell 命令。',
        ),
        _FeatureCard(
          icon: Icons.memory,
          color: Colors.pink,
          title: '长期记忆',
          desc: '记住你的偏好与项目细节，跨对话延续上下文。',
        ),
      ],
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({required this.icon, required this.color, required this.title, required this.desc});
  final IconData icon;
  final Color color;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(radius: 28, backgroundColor: color.withOpacity(0.15), child: Icon(icon, color: color, size: 28)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(desc, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
