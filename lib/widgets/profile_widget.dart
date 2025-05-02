import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/image_path.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/profile_button.dart';

import 'package:portfolio/widgets/profile_description.dart';
import 'package:portfolio/widgets/resume_block.dart';
import 'package:portfolio/widgets/status_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileWidget extends StatefulWidget {
  final bool showResume;
  const ProfileWidget({super.key, required this.showResume});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  var isHoveringDownloadButton = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CustomColors.cardColor,
        border: Border.all(color: CustomColors.lightCardColor, width: 0.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image Part
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  ImagePath.profilePath,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(width: 6),
              // Description Part
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StatusWidget(),
                    Text(
                      TextString.name,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    RichText(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: TextString.profileDescriptionFirst,
                        style: Theme.of(context).textTheme.labelLarge,
                        spellOut: true,
                        children: [
                          TextSpan(
                            text: TextString.profileDescriptionSecond,
                            style: Theme.of(
                              context,
                            ).textTheme.labelLarge!.copyWith(
                              color: CustomColors.accentColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Resume Part
              if (widget.showResume) ResumeBlock(),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            TextString.profileShortDescription,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 6),
          // Profile Description
          ProfileDescription(),
          const SizedBox(height: 12),
          // Profile Buttons
          ResponsiveBuilder(
            builder:
                (context, sizingInformation) =>
                    sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? Row(
                          children: [
                            Expanded(
                              child: ProfileButton(
                                title: 'Email Me',
                                url: TextString.emailLink,
                                icon: Icons.email,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: ProfileButton(
                                title: 'WhatsApp Me',
                                url: TextString.whatsAppLink,
                                icon: FontAwesome.whatsapp_brand,
                              ),
                            ),
                          ],
                        )
                        : Column(
                          children: [
                            ProfileButton(
                              title: 'Email Me',
                              url: TextString.emailLink,
                              icon: Icons.email,
                            ),
                            const SizedBox(height: 6),
                            ProfileButton(
                              title: 'WhatsApp Me',
                              url: TextString.whatsAppLink,
                              icon: FontAwesome.whatsapp_brand,
                            ),
                          ],
                        ),
          ),
        ],
      ),
    );
  }
}
