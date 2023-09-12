import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:ui_common/ui_common.dart';

import 'routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'Github App'.hardcoded,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        primaryColor: GAColors.primary,
        appBarTheme: const AppBarTheme(
            backgroundColor: GAColors.background,
            foregroundColor: GAColors.grey600,
            elevation: 0,
            centerTitle: false),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: context.bodyMedium.copyWith(
            color: GAColors.grey400,
          ),
          fillColor: GAColors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: Sizes.p8,
            vertical: Sizes.p12,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Sizes.p12,
            ),
            borderSide: const BorderSide(width: 0.3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.p12),
            borderSide: const BorderSide(color: GAColors.primary, width: 0.3),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide:
                  const BorderSide(color: GAColors.grey200, width: 0.3)),
        ),
      ),
    );
  }
}
