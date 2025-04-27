import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: () {},
        color: CustomColors.lightCardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
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
