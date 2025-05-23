import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/social_media_tile.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          ResponsiveBuilder(
            builder:
                (context, sizingInformation) =>
                    sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? const SizedBox(height: 20)
                        : SizedBox(),
          ),
          SocialMediaTile(
            title: 'X / Twitter',
            iconData: Bootstrap.twitter_x,
            url: TextString.xLink,
            isClickable: true,
          ),
          ResponsiveBuilder(
            builder:
                (context, sizingInformation) =>
                    sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? const SizedBox(height: 10)
                        : SizedBox(),
          ),
          SocialMediaTile(
            title: 'LinkedIn',
            iconData: FontAwesome.linkedin_brand,
            url: TextString.linkedinLink,
            isClickable: true,
          ),

          ResponsiveBuilder(
            builder:
                (context, sizingInformation) =>
                    sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? const SizedBox(height: 10)
                        : SizedBox(),
          ),
          SocialMediaTile(
            title: 'GitHub',
            iconData: FontAwesome.github_brand,
            url: TextString.githubLink,
            isClickable: true,
          ),
          ResponsiveBuilder(
            builder:
                (context, sizingInformation) =>
                    sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? const SizedBox(height: 10)
                        : SizedBox(),
          ),

          SocialMediaTile(
            title: 'Dev',
            iconData: FontAwesome.dev_brand,
            url: TextString.devLink,
            isClickable: true,
          ),
        ],
      ),
    );
  }
}
