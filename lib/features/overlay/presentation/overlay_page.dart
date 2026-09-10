import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';

class OverlayPage extends ConsumerWidget {
  const OverlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Оверлей'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.surfaceVariant,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.accent.withOpacity(0.4)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: AppColors.accent),
                      const SizedBox(width: 10),
                      const Text(
                        'Важная информация',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Настоящий оверлей поверх игры с анализом экрана в реальном времени имеет серьёзные технические и политические ограничения:\n\n'
                    '• На iOS почти невозможно реализовать из-за ограничений системы.\n'
                    '• На Android требуется специальное разрешение SYSTEM_ALERT_WINDOW + MediaProjection.\n'
                    '• Google Play и App Store очень строго относятся к приложениям-помощникам для игр (риск бана как читов).\n\n'
                    'В текущей версии реализован безопасный подход: анализ через скриншот + ручной ввод драфта.',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      height: 1.4,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Доступные действия',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),

            _ActionTile(
              icon: Icons.photo_camera_outlined,
              title: 'Загрузить скриншот драфта',
              subtitle: 'Приложение попробует распознать героев',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Функция распознавания будет добавлена в следующих версиях'),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            _ActionTile(
              icon: Icons.edit_note_rounded,
              title: 'Ручной ввод драфта',
              subtitle: 'Самый надёжный способ прямо сейчас',
              onTap: () {
                // Можно сразу перейти на /draft
              },
            ),
            const SizedBox(height: 10),
            _ActionTile(
              icon: Icons.settings_suggest_rounded,
              title: 'Настройки оверлея (Android)',
              subtitle: 'Разрешения и прозрачность',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Доступно только на Android после выдачи разрешений'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _ActionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.card,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: AppColors.primary),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}
