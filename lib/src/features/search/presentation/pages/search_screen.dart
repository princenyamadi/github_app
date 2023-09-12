import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/assets/svgs.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/features/search/presentation/widgets/repositories_search_widget.dart';
import 'package:github_app/src/features/search/presentation/widgets/users_search_widget.dart';
import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:github_app/src/utils/debouncer.dart';
import 'package:ui_common/ui_common.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final searchController = TextEditingController();
  final debouncer = Debouncer(milliseconds: 1000);

  final searchQueryProvider = StateProvider<String>((ref) => '');
  final searchPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);
    final searchReader = ref.read(searchQueryProvider.notifier);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'.hardcoded),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Svgs.notification),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
          child: Column(
            children: [
              TextFormField(
                onChanged: (input) {
                  debouncer.run(() {
                    searchReader.state = input;
                  });
                },
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(Sizes.p12),
                      child: SvgPicture.asset(Svgs.search),
                    ),
                    hintText: 'Search for users or repositories'.hardcoded),
              ),
              gapH24,
              ValueListenableBuilder(
                  valueListenable: searchPageNotifier,
                  builder: (context, searchNotifier, _) {
                    return Row(
                      children: [
                        TitleWidget(
                          title: 'Users',
                          showBorder: searchNotifier == 0,
                        ),
                        gapW20,
                        TitleWidget(
                          title: 'Repositories',
                          showBorder: searchNotifier == 1,
                        ),
                      ],
                    );
                  }),
              Expanded(
                child: PageView(
                  onPageChanged: (page) {
                    searchPageNotifier.value = page;
                  },
                  children: [
                    UserSearchWidget(query: searchQuery),
                    RepositoriesSearchWidget(query: searchQuery),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class TitleWidget extends StatelessWidget {
  final bool showBorder;
  final String title;
  const TitleWidget({super.key, required this.showBorder, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p8),
      duration: const Duration(microseconds: 500),
      decoration: BoxDecoration(
        // color: GAColors.primary,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: showBorder ? GAColors.primary : Colors.transparent,
          ),
        ),
      ),
      child: Column(children: [
        Text(
          title.hardcoded,
          style: context.titleMedium.copyWith(),
        ),
      ]),
    );
  }
}
