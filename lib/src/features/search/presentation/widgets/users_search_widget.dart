import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/assets/images.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/features/search/application/search_service.dart';

import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:github_app/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_common/ui_common.dart';

import 'user_list_tile.dart';

class UserSearchWidget extends ConsumerWidget {
  final String query;
  const UserSearchWidget({required this.query, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSearchAsyncValue = ref.watch(userSearchProvider(query));
    return query.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What are you looking for?'.hardcoded,
                style: context.bodyMedium.copyWith(
                  color: const Color(0xff808080),
                ),
              ),
              gapH16,
              Center(
                child: Image.asset(Images.noQuery),
              ),
            ],
          )
        : userSearchAsyncValue.when(
            data: (response) {
              return response.fold((l) {
                return Center(
                  child: Text(l.message),
                );
              }, (r) {
                if (r.items != null && r.items!.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: double.infinity),
                      gapH48,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Cannot find any search result for '.hardcoded,
                            style: context.bodyMedium.copyWith(
                              color: const Color(0xff808080),
                            ),
                          ),
                          Text(
                            '$query'.hardcoded,
                            style: context.bodyMedium.copyWith(
                              color: GAColors.grey800,
                            ),
                          ),
                        ],
                      ),
                      gapH16,
                      Center(
                        child: Image.asset(Images.noResult),
                      ),
                    ],
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    gapH12,
                    RichText(
                      text: TextSpan(
                        text: 'Showing ',
                        style: context.bodyMedium.copyWith(
                          color: GAColors.grey400,
                        ),
                        children: [
                          TextSpan(
                            text: '${r.items?.length} results ',
                            style: context.bodyMedium.copyWith(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1f1f1f),
                            ),
                          ),
                          const TextSpan(
                            text: 'for ',
                          ),
                          TextSpan(
                            text: '$query ',
                            style: context.bodyMedium.copyWith(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1f1f1f),
                            ),
                          ),
                        ],
                      ),
                    ),
                    gapH16,
                    Expanded(
                        child: ListView(
                      children: List.generate(r.items?.length ?? 0, (index) {
                        final item = r.items![index];
                        return UserListTile(
                          item: item,
                          onPressed: (user) {
                            if (user != null) {
                              context.pushNamed(AppRoute.profile.name,
                                  extra: {'user': user},
                                  pathParameters: {'name': user.name!});
                            }
                          },
                        );
                      }),
                    ))
                  ],
                );
              });
            },
            error: (error, stackTrace) {
              return const Center(
                child: Text('Error occured'),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()));
  }
}
