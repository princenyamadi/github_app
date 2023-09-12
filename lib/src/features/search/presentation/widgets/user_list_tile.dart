import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_app/src/features/search/application/search_service.dart';
import 'package:github_app/src/features/search/domain/user_response/user_response.dart';
import 'package:github_app/src/utils/currency_formatter.dart';
import 'package:github_app/src/utils/date_formatter.dart';
import 'package:intl/intl.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/color/colors.dart';
import '../../domain/github_user_search_response/item.dart';

class UserListTile extends ConsumerWidget {
  final Item item;
  final Function(UserResponse? user) onPressed;
  const UserListTile({
    super.key,
    required this.onPressed,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('avatar url: ${item.avatarUrl}');
    final githubUserAsyncValue = ref.watch(githubUserProvider(item.login!));

    return githubUserAsyncValue.when(
        data: (asyncValue) {
          return asyncValue.fold((l) {
            return Center(
              child: Text(l.message),
            );
          }, (r) {
            final followers =
                ref.watch(numberFormatterProvider).format(r.followers);
            return GestureDetector(
              onTap: () => onPressed(r),
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
                        item.avatarUrl != null && item.avatarUrl!.isNotEmpty
                            ? SizedBox(
                                height: 21,
                                width: 21,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(item.avatarUrl!),
                                  onBackgroundImageError:
                                      (exception, stackTrace) {},
                                ),
                              )
                            : const SizedBox(
                                height: 21, width: 21, child: CircleAvatar()),
                        gapW12,
                        Expanded(
                          flex: 4,
                          child: Text(
                            r.name ?? '',
                            style: context.titleSmall
                                .copyWith(color: GAColors.grey800),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '$followers followers',
                          style: context.bodyMedium
                              .copyWith(color: GAColors.primaryLight),
                        ),
                      ],
                    ),
                    gapH4,
                    Text(
                      r.bio ?? '',
                      style: context.bodyMedium.copyWith(
                          color: GAColors.grey450,
                          overflow: TextOverflow.ellipsis),
                    ),
                    gapH8,
                    gapH48,
                    Text(
                      r.location != null && r.location!.isNotEmpty
                          ? r.location!
                          : r.updatedAt != null && r.updatedAt!.isNotEmpty
                              ? 'Updated ${ref.watch(dateFormatterProvider).format(DateTime.parse(r.updatedAt!))}'
                              : '',
                      style: context.bodyMedium.copyWith(
                        color: GAColors.grey450,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('Something went wrong'),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
