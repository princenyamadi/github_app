import 'package:flutter/material.dart';
import 'package:github_app/src/localization/string_hardcoded.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/color/colors.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({
    super.key,
    required this.title,
    this.width = 100,
  });

  final String title;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.hardcoded,
          style: context.titleMedium.copyWith(color: GAColors.primary),
        ),
        gapH8,
        Container(
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(
              color: GAColors.grey450.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Container(
                width: width,
                height: 2,
                decoration: BoxDecoration(
                    color: GAColors.primary,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
