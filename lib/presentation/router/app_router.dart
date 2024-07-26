import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_pitch/presentation/ui/forgot_password/forgot_password_screen.dart';
import 'package:v_pitch/presentation/ui/home/home_screen.dart';
import 'package:v_pitch/presentation/ui/main_home/main_home_screen.dart';
import 'package:v_pitch/presentation/ui/rival/find_rival_screen.dart';
import 'package:v_pitch/presentation/ui/sign_up/sign_up_screen.dart';

import '../ui/sign_in/sign_in_screen.dart';

class AppRouter {
  static const String signIn = '/login';
  static const String signUp = '/sign_up';
  static const String forgotPassword = '/forgot_password';

  static const String home = '/home';
  static const String rival = '/rival';
  static const String field = '/field';
  static const String profile = '/profile';

  static final routerConfig = GoRouter(
    initialLocation: signIn,
    routes: [
      GoRoute(
        path: signIn,
        builder: (context, state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) {
          return const SignUpScreen();
        },
      ),
      GoRoute(
        path: forgotPassword,
        builder: (context, state) {
          return const ForgotPasswordScreen();
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MainHomeScreen(child: child);
        },
        routes: [
          GoRoute(
            path: home,
            builder: (context, state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: rival,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: FindRivalScreen(),
              );
            },
          ),
          GoRoute(
            path: field,
            builder: (context, state) {
              return Container(
                color: Colors.blue,
              );
            },
          ),
          GoRoute(
            path: profile,
            builder: (context, state) {
              return Container(
                color: Colors.red,
              );
            },
          ),
        ],
      ),
    ],
  );
}
