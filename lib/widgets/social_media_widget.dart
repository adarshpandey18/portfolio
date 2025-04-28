import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/social_media_tile.dart';
import 'package:portfolio/widgets/tech_stack_tile.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.extraLightCardColor, width: 0.8),
        borderRadius: BorderRadius.circular(24),
        color: CustomColors.cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Bootstrap.sun_fill,
                    color: CustomColors.accentColor,
                    size: 22,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    TextString.onlinePresenceSubHeading,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: CustomColors.labelTextColor,
                    ),
                  ),
                ],
              ),
              Text(
                TextString.onlinePresenceHeading,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SocialMediaTile(title: 'X / Twitter', iconData: Bootstrap.twitter_x),
          SocialMediaTile(
            title: 'LinkedIn',
            iconData: FontAwesome.linkedin_brand,
          ),
          SocialMediaTile(title: 'GitHub', iconData: FontAwesome.github_brand),
        ],
      ),
    );
  }
}
