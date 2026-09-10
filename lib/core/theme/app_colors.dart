import 'package:flutter/material.dart';

/// Современная тёмная палитра с игровыми акцентами
class AppColors {
  // Основные фоны
  static const Color background = Color(0xFF0D0D12);
  static const Color surface = Color(0xFF16161D);
  static const Color surfaceVariant = Color(0xFF1E1E28);
  static const Color card = Color(0xFF1A1A24);

  // Акценты (игровой стиль)
  static const Color primary = Color(0xFF7B5CFF);      // фиолетовый
  static const Color secondary = Color(0xFF00E5C0);    // бирюзовый
  static const Color accent = Color(0xFFFFB800);      // золотой (как в MLBB)
  static const Color danger = Color(0xFFFF4D6A);
  static const Color success = Color(0xFF00C853);

  // Текст
  static const Color textPrimary = Color(0xFFF5F5F7);
  static const Color textSecondary = Color(0xFFA0A0B2);
  static const Color textMuted = Color(0xFF6B6B7B);

  // Градиенты
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF7B5CFF), Color(0xFF5B3FCC)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient goldGradient = LinearGradient(
    colors: [Color(0xFFFFD700), Color(0xFFFFB800)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF1E1E28), Color(0xFF16161D)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
