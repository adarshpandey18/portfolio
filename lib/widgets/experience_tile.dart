import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/event_child.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String role;
  final String companyName;
  final String description;
  final String date;
  const ExperienceTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.role,
      required this.companyName,
      required this.description,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: const LineStyle(color: AppColors.accentColor, thickness: 6),
      indicatorStyle: IndicatorStyle(
        width: 40,
        color: isPast
            ? AppColors.accentColor
            : AppColors.secondaryColor,
        iconStyle: IconStyle(
          iconData: Icons.done,
        ),
      ),
      endChild: EventChild(
          role: role,
          date: date,
          companyName: companyName,
          description: description),
    );
  }
}
