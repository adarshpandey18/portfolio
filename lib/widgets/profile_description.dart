import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/data/helper_data.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: CustomColors.lightCardColor,
            border: Border.all(
              color: CustomColors.extraLightCardColor,
              width: 0.8,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children:
                HelperData.descriptionData.map((descriptionData) {
                  final key = descriptionData.keys.first;
                  final value = descriptionData[key];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.extraLightCardColor,
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(value, size: 22, color: CustomColors.accentColor),
                        const SizedBox(width: 6),
                        Text(
                          key,
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(color: CustomColors.textColor),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
