import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/assets/svgs.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/features/search/application/search_service.dart';
import 'package:github_app/src/features/search/domain/user_response/user_response.dart';
import 'package:github_app/src/features/search/presentation/widgets/repository_list_tile.dart';
import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../routing/app_router.dart';
import '../../../../utils/currency_formatter.dart';
import '../../../../utils/date_formatter.dart';
import '../widgets/topic_widget.dart';

class UserProfileScreen extends ConsumerWidget {
  final UserResponse user;
  const UserProfileScreen({required this.user, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRepositoriesAsyncValue =
        ref.watch(userRepositoriesProvider(user.login!));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: SvgPicture.asset(Svgs.backButton),
        ),
      ),
      // backgroundColor: GAColors.primary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH24,
            Container(
              height: context.mediaQuery.size.height * 0.12,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Sizes.p12)),
                  border: Border.all(
                    width: 5,
                    color: GAColors.white,
                  )),
              width: double.infinity,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(Sizes.p12)),
                child: CachedNetworkImage(
                  imageUrl: user.avatarUrl ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            gapH12,
            Text(
              user.name ?? '',
              style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w600, color: GAColors.grey800),
            ),
            gapH12,
            Text(
              user.bio ?? '',
              style: context.bodyMedium.copyWith(color: GAColors.grey450),
            ),
            gapH12,
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Svgs.profile2user,
                      color: GAColors.grey450,
                    ),
                    gapW4,
                    Text(
                      '${ref.watch(numberFormatterProvider).format(user.followers)} Followers'
                          .hardcoded,
                      style:
                          context.bodyMedium.copyWith(color: GAColors.grey450),
                    ),
                  ],
                ),
                gapW8,
                Text(
                  '${ref.watch(numberFormatterProvider).format(user.following)} Following'
                      .hardcoded,
                  style: context.bodyMedium.copyWith(color: GAColors.grey450),
                ),
              ],
            ),
            gapH12,
            Row(
              children: [
                SvgPicture.asset(
                  Svgs.profile2user,
                  color: GAColors.grey450,
                ),
                gapW4,
                Text(
                  '${user.location ?? ''}'.hardcoded,
                  style: context.bodyMedium.copyWith(color: GAColors.grey450),
                ),
              ],
            ),
            gapH20,
            const TopicWidget(title: 'Repositories'),
            gapH12,
            userRepositoriesAsyncValue.when(
                data: (asyncVlaue) {
                  return asyncVlaue.fold((l) {
                    return Center(
                      child: Text(l.message),
                    );
                  }, (r) {
                    return Column(
                      children: List.generate(r.length, (index) {
                        final item = r[index];
                        final reposiotryLangguagesAsyncValue = ref.watch(
                            repositoryLanguagesProvider(item.languagesUrl!));

                        return reposiotryLangguagesAsyncValue.when(
                            data: (languages) {
                              final list = languages.entries.toList();
                              return RepositoryTile(
                                languages: list,
                                onPressed: () {
                                  context.goNamed(AppRoute.reposiory.name,
                                      pathParameters: {
                                        'repository': item.name!
                                      },
                                      extra: {
                                        'repository': item,
                                        'languages': list
                                      });
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
                      }),
                    );
                  });
                },
                error: (error, stackTrace) {
                  return Center(
                    child: Text('Error Occured'),
                  );
                },
                loading: () => Center(
                      child: const CircularProgressIndicator(),
                    ))
          ],
        ),
      ),
    );
  }
}
