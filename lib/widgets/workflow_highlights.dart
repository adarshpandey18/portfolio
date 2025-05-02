import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/data/helper_data.dart';

class WorkflowHighlights extends StatelessWidget {
  const WorkflowHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.extraLightCardColor, width: 0.8),
        color: CustomColors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Bootstrap.stars, color: CustomColors.accentColor, size: 22),
              const SizedBox(width: 4),
              Text(
                TextString.workflowSubHeading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
          Text(
            TextString.workflowHeaing,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 22),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: HelperData.workflowData.length,
            itemBuilder: (context, index) {
              final data = HelperData.workflowData[index];
              final title = data.keys.first;
              final iconData = data[title];
              final description = HelperData.workflowDataDescription[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),

                child: Tooltip(
                  richMessage: TextSpan(
                    text: '$title\n',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: description,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CustomColors.cardColor,
                    border: Border.all(
                      color: CustomColors.extraLightCardColor,
                      width: 0.8,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.extraLightCardColor,
                        width: 0.8,
                      ),
                      color: CustomColors.lightCardColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CustomColors.extraLightCardColor,
                          ),
                          child: Icon(
                            iconData,
                            size: 20,
                            color: CustomColors.labelTextColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(color: CustomColors.labelTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
