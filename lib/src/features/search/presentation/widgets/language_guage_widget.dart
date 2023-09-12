import 'package:flutter/material.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../constants/app_sizes.dart';

class LanguageGuageWidget extends StatelessWidget {
  final List<MapEntry> languages;
  const LanguageGuageWidget({
    super.key,
    required this.languages,
  });

  @override
  Widget build(BuildContext context) {
    final total = languages.fold(
        0, (previousValue, element) => previousValue + element.value as int);

    final langs = List.generate(languages.length, (index) {
      final lang = languages[index];

      final percentage = (lang.value / total) * 100;

      return MapEntry(lang.key, percentage);
    }).toList();

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: Sizes.p12,
              width: context.mediaQuery.size.width * 0.9,
              child: Row(
                  children: List.generate(langs.length, (index) {
                final colorIndex =
                    (langs[index].value / 100) * Colors.primaries.length;
                final width = (langs[index].value / 100) *
                    context.mediaQuery.size.width *
                    0.9;

                return Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.primaries[colorIndex.toInt()],
                  ),
                );
              })),
            ),
          ),
          gapH12,
          Wrap(
            spacing: Sizes.p4,
            runSpacing: Sizes.p4,
            children: List.generate(langs.length, (index) {
              final colorIndex =
                  (langs[index].value / 100) * Colors.primaries.length;

              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        Colors.primaries[colorIndex.toInt()].withOpacity(0.12)),
                child: Text(
                  '${langs[index].key} ${(langs[index].value as double).toStringAsFixed(2)} %',
                  style: context.bodyMedium.copyWith(
                    color: Colors.primaries[colorIndex.toInt()],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
