import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/data/helper_data.dart';
import 'package:portfolio/widgets/tech_stack_tile.dart';

class TechArsenal extends StatelessWidget {
  const TechArsenal({super.key});

  @override
  Widget build(BuildContext context) {
    final techStack = HelperData.techStack.entries.toList();
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.extraLightCardColor, width: 0.8),
        borderRadius: BorderRadius.circular(20),
        color: CustomColors.cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Bootstrap.stack, color: CustomColors.accentColor, size: 22),
              const SizedBox(width: 4),
              Text(
                TextString.techArsenalSubHeading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
          Text(
            TextString.techArsenalHeading,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Spacer(),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3,
                crossAxisCount: 2,
              ),
              itemCount: techStack.length,
              itemBuilder: (context, index) {
                final entry = techStack[index];
                final techName = entry.key;
                final techData = entry.value;
                return TechStackTile(
                  title: techName,
                  url: techData["url"],
                  iconData: techData['icon'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
