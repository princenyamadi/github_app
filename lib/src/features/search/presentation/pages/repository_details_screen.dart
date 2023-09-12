import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_app/src/constants/app_sizes.dart';
import 'package:github_app/src/constants/color/colors.dart';
import 'package:github_app/src/features/search/domain/repository_response/repository_response.dart';
import 'package:github_app/src/features/search/presentation/widgets/topic_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../constants/assets/svgs.dart';
import '../widgets/language_guage_widget.dart';

class RepositoryDetailsScreen extends ConsumerWidget {
  final RepositoryResponse repository;
  final List<MapEntry> languages;
  const RepositoryDetailsScreen(
      {required this.repository, required this.languages, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: SvgPicture.asset(Svgs.backButton),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH16,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child: Text(
                    repository.name ?? '',
                    style: context.titleLarge.copyWith(color: GAColors.grey800),
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.p16),
                    color: GAColors.primary.withOpacity(0.12),
                  ),
                  child: Text(
                    repository.visibility ?? '',
                    style: context.bodyMedium.copyWith(color: GAColors.primary),
                  ),
                )
              ],
            ),
            gapH16,
            const TopicWidget(
              title: 'About',
              width: 60,
            ),
            gapH16,
            Text(
              'Description',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey450,
              ),
            ),
            gapH12,
            Text(repository.description ?? ''),
            gapH4,
            // todo: add languages
            gapH24,
            Text(
              'Releases',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey450,
              ),
            ),
            gapH12,
            Text(
              '',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey700,
              ),
            ),
            Text(
              '1.1.10',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey700,
              ),
            ),
            gapH12,
            // todo: add release date here
            gapH24,
            Text(
              'Languages',
              style: context.bodyMedium.copyWith(
                color: GAColors.grey450,
              ),
            ),
            gapH12,
            LanguageGuageWidget(
              languages: languages,
            ),
          ],
        ),
      ),
    );
  }
}
