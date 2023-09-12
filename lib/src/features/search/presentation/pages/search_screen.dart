import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/assets/svgs.dart';
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

  @override
  void initState() {
    searchController.addListener(() {
      log('inside here');
    });
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
                    log('took a shower: $input');
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
              Row(
                children: [
                  Text(
                    'Users'.hardcoded,
                    style: context.titleMedium.copyWith(),
                  ),
                  gapW20,
                  Text(
                    'Repositories'.hardcoded,
                    style: context.titleMedium,
                  ),
                ],
              ),
              Expanded(
                child: PageView(
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
