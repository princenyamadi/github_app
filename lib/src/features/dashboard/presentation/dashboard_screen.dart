import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/assets/svgs.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/features/analytics/presentation/analytics_screen.dart';
import 'package:github_app/src/features/search/presentation/pages/search_screen.dart';
import 'package:github_app/src/features/settings/presentation/settings_screen.dart';
import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:ui_common/ui_common.dart';

class DashboardScreen extends ConsumerWidget {
  DashboardScreen({super.key});

  final pageController = PageController();
  final pageNotifier = StateProvider<int>((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // observe pageNotifier
    final pageObserver = ref.watch(pageNotifier);
    // set new data to pageNotifier
    final pageReader = ref.watch(pageNotifier.notifier);
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          pageReader.state = index;
        },
        controller: pageController,
        children: const [
          SearchScreen(),
          AnalyticsScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: context.mediaQuery.size.height * 0.11,
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomAppBar(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p16, vertical: Sizes.p12),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomAppBarIcon(
                      isActive: pageObserver == 0,
                      title: 'Home',
                      child: SvgPicture.asset(
                        Svgs.home,
                        color: pageObserver == 0
                            ? GAColors.primary
                            : GAColors.primaryLight,
                      ),
                      onPressed: () {
                        pageReader.state = 0;
                        pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.linear);
                      },
                    ),
                    BottomAppBarIcon(
                      isActive: pageObserver == 1,
                      title: 'Analytics',
                      child: SvgPicture.asset(
                        Svgs.user,
                        color: pageObserver == 1
                            ? GAColors.primary
                            : GAColors.primaryLight,
                      ),
                      onPressed: () {
                        pageReader.state = 1;
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.linear);
                      },
                    ),
                    BottomAppBarIcon(
                      isActive: pageObserver == 2,
                      title: 'Settings',
                      child: SvgPicture.asset(
                        Svgs.settings,
                        color: pageObserver == 2
                            ? GAColors.primary
                            : GAColors.primaryLight,
                      ),
                      onPressed: () {
                        pageReader.state = 2;
                        pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.linear);
                      },
                    ),
                  ]),
            )),
      ),
    );
  }
}

class BottomAppBarIcon extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final Widget child;
  final bool isActive;
  const BottomAppBarIcon({
    super.key,
    required this.child,
    required this.title,
    required this.isActive,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          child,
          Text(
            title.hardcoded,
            style: context.titleSmall.copyWith(
              color: isActive ? GAColors.primary : GAColors.primaryLight,
            ),
          ),
        ],
      ),
    );
  }
}
