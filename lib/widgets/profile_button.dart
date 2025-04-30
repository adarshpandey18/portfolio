import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/helper_functions.dart';

class ProfileButton extends StatefulWidget {
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
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  var isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:
          (event) => setState(() {
            isHovering = true;
          }),
      onExit:
          (event) => setState(() {
            isHovering = false;
          }),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            if (isHovering)
              BoxShadow(
                color: CustomColors.accentColor.withOpacity(0.6),
                blurRadius: 20,
                spreadRadius: 2,
                offset: const Offset(0, 0),
              ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: CupertinoButton(
          onPressed: () {
            HelperFunctions.launchCustomURL(url: widget.url);
          },
          color:
              isHovering
                  ? CustomColors.accentColor
                  : CustomColors.lightCardColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color:
                    isHovering
                        ? CustomColors.cardColor
                        : CustomColors.accentColor,
              ),
              const SizedBox(width: 10),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color:
                      isHovering
                          ? CustomColors.cardColor
                          : CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
