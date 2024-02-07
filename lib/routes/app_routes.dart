import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unhush_assignment/command/presentation/screen/command_screen.dart';
import 'package:unhush_assignment/home/presentation/screen/home_screen.dart';
import 'package:unhush_assignment/login/presentation/screen/login_screen.dart';
import 'package:unhush_assignment/routes/routes.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: Routes.initial,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.initial,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: Routes.command,
        builder: (BuildContext context, GoRouterState state) {
          return const CommandScreen();
        },
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
  static GoRouter get appRouter => _router;
}
