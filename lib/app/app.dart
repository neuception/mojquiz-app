import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/login_screen.dart';
import '../features/auth/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/quiz/dashboard_screen.dart';
import '../features/quiz/quiz_screen.dart';
import '../features/profile/profile_screen.dart';

class MojquizApp extends ConsumerWidget {
  const MojquizApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    final router = GoRouter(
      initialLocation: '/',
      redirect: (context, state) {
        final isLoggedIn = authState.value != null;
        final isLoggingIn = state.uri.path == '/login';

        if (!isLoggedIn && !isLoggingIn) return '/login';
        if (isLoggedIn && isLoggingIn) return '/';
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: '/quiz/:quizId',
          builder: (context, state) {
            final quizId = state.pathParameters['quizId']!;
            return QuizScreen(quizId: quizId);
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Mojquiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
