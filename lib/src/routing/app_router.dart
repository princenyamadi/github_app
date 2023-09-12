import 'package:flutter/material.dart';
import 'package:github_app/src/features/search/presentation/pages/user_profile_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/dashboard/presentation/dashboard_screen.dart';
import '../features/search/presentation/pages/repository_details_screen.dart';
import 'go_router_refresh_stream.dart';
import 'not_found_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  dashboard,
  home,
  profile,
  reposiory,
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,

    redirect: (context, state) {},

    // refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
          path: '/',
          name: AppRoute.dashboard.name,
          builder: (context, state) => DashboardScreen(key: state.pageKey),
          routes: [
            GoRoute(
                path: 'profile/:name',
                name: AppRoute.profile.name,
                builder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>;

                  final user = extra['user'];

                  return UserProfileScreen(user: user);
                },
                routes: []),
            GoRoute(
                path: 'repository/:repository',
                name: AppRoute.reposiory.name,
                builder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>;

                  final repository = extra['repository'];
                  final languages = extra['languages'];

                  return RepositoryDetailsScreen(
                      repository: repository, languages: languages);
                },
                routes: []),
          ]),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
