import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/helper_functions.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final String url;
  final IconData icon;
  const ProfileButton({
    super.key,
    required this.title,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: () {
          HelperFunctions.launchCustomURL(url: url);
        },
        color: CustomColors.lightCardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: CustomColors.accentColor),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: CustomColors.labelTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
