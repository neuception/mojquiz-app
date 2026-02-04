import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/login_screen.dart';
import '../features/auth/welcome_screen.dart';
import '../features/auth/signup_screen.dart';
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
        final isWelcome = state.uri.path == '/welcome';
        final isSignUp = state.uri.path == '/signup';

        // Allow navigation to welcome, login, and signup if not logged in
        if (!isLoggedIn) {
          if (isLoggingIn || isWelcome || isSignUp) return null;
          return '/welcome';
        }

        // If logged in and trying to access auth pages, redirect to home
        if (isLoggingIn || isWelcome || isSignUp) return '/';
        
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/welcome',
          builder: (context, state) => const WelcomeScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/signup',
          builder: (context, state) => const SignupScreen(),
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF), // Vibrant Purple
          secondary: const Color(0xFF00BFA6), // Teal accent
          tertiary: const Color(0xFFFF6584), // Pinkish accent
          background: const Color(0xFFF8F9FE),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F9FE),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF2D3142),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Color(0xFF2D3142)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6C63FF),
            foregroundColor: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF6C63FF),
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          margin: const EdgeInsets.all(8),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFF0F2F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xFF6C63FF), width: 2),
          ),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
      routerConfig: router,
    );
  }
}
