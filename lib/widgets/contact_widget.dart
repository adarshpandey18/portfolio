import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/profile_button.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CustomColors.cardColor,
        border: Border.all(color: CustomColors.extraLightCardColor, width: 0.8),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: CustomColors.lightCardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              FontAwesome.crown_solid,
              color: CustomColors.accentColor,
            ),
          ),
          Text(
            TextString.connectHeading,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            TextString.connectSubHeading,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 20),
          ProfileButton(
            title: 'Email Me',
            url: TextString.emailLink,
            icon: Icons.email,
          ),
          const SizedBox(height: 20),
          ProfileButton(
            title: 'Whatsapp Me',
            url: TextString.whatsAppLink,
            icon: FontAwesome.whatsapp_brand,
          ),
          const SizedBox(height: 20),
          ProfileButton(
            title: 'Telegram Me',
            url: TextString.telegramLink,
            icon: FontAwesome.telegram_brand,
          ),
        ],
      ),
    );
  }
}
