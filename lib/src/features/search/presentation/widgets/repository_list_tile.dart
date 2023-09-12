import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/assets/svgs.dart';
import 'package:github_app/src/features/search/application/search_service.dart';

import 'package:github_app/src/features/search/domain/repository_response/repository_response.dart';
import 'package:github_app/src/routing/app_router.dart';
import 'package:github_app/src/utils/currency_formatter.dart';
import 'package:github_app/src/utils/date_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/color/colors.dart';
import '../../domain/github_repository_search_response/item.dart';

class RepositoryListTile extends ConsumerWidget {
  final Item item;
  const RepositoryListTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final githubUserAsyncValue = ref.watch(githubUserProvider(item.login!));
    final json = item.toJson();
    json['owner'] = item.owner?.toJson() ?? {};
    final repo = RepositoryResponse.fromJson(json);

    // final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

    final reposiotryLangguagesAsyncValue =
        ref.watch(repositoryLanguagesProvider(item.languagesUrl!));

    return reposiotryLangguagesAsyncValue.when(
        data: (languages) {
          final list = languages.entries.toList();
          return RepositoryTile(
            languages: list,
            onPressed: () {
              context.goNamed(AppRoute.reposiory.name,
                  pathParameters: {'repository': item.name!},
                  extra: {'repository': repo, 'languages': list});
            },
            description: item.description ?? '',
            name: item.name ?? '',
            stargazzersCount: item.stargazersCount!,
            updatedAt: ref
                .watch(dateFormatterProvider)
                .format(DateTime.parse(item.updatedAt!)),
          );
        },
        error: (error, stackTrace) {
          return const SizedBox.shrink();
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}

class RepositoryTile extends ConsumerWidget {
  final String name;
  final int stargazzersCount;
  final String description;
  final String updatedAt;
  final List<dynamic> languages;
  final Function()? onPressed;

  const RepositoryTile({
    super.key,
    required this.name,
    required this.stargazzersCount,
    required this.description,
    required this.updatedAt,
    required this.languages,
    this.onPressed,
  });

  // final Item item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: Sizes.p12),
        padding: const EdgeInsets.all(Sizes.p12),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: GAColors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 2,
                  spreadRadius: 0,
                  color: Color.fromRGBO(0, 0, 0, 0.08))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Text(
                //   ,
                //   style: context.titleSmall.copyWith(

                //   ),
                // ),
                // gapW12,
                Expanded(
                  flex: 6,
                  child: Text(
                    name,
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(Svgs.star),
                    gapW4,
                    Text(
                      ref
                          .watch(numberFormatterProvider)
                          .format(stargazzersCount),
                      style: context.bodyMedium
                          .copyWith(color: GAColors.primaryLight),
                    )
                  ],
                )
              ],
            ),
            gapH4,
            Text(
              description,
              style: context.bodyMedium.copyWith(
                  color: GAColors.grey450, overflow: TextOverflow.ellipsis),
            ),
            gapH8,
            Wrap(
              spacing: Sizes.p4,
              runSpacing: Sizes.p4,
              children: List.generate(languages.length, (index) {
                final MapEntry language = languages[index];

                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: GAColors.primary.withOpacity(0.12)),
                  child: Text(
                    language.key,
                    style: context.bodyMedium.copyWith(color: GAColors.primary),
                  ),
                );
              }),
            ),
            gapH12,
            Text(
              'Updated $updatedAt',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey450,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// item.description ?? ''