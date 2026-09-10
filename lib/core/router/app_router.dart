import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/draft/presentation/pages/draft_page.dart';
import '../../features/heroes/presentation/pages/heroes_page.dart';
import '../../features/builds/presentation/pages/builds_page.dart';
import '../../features/overlay/presentation/overlay_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/draft',
        name: 'draft',
        builder: (context, state) => const DraftPage(),
      ),
      GoRoute(
        path: '/heroes',
        name: 'heroes',
        builder: (context, state) => const HeroesPage(),
      ),
      GoRoute(
        path: '/builds',
        name: 'builds',
        builder: (context, state) => const BuildsPage(),
      ),
      GoRoute(
        path: '/overlay',
        name: 'overlay',
        builder: (context, state) => const OverlayPage(),
      ),
    ],
  );
});
