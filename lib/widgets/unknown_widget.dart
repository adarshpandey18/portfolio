import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/helper_functions.dart';

class UnknownWidget extends StatelessWidget {
  const UnknownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Motion(
      filterQuality: FilterQuality.high,
      glare: GlareConfiguration(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
        decoration: BoxDecoration(
          // border: Border.all(color: CustomColors.lightCardColor, width: 0.8),
          borderRadius: BorderRadius.circular(20),
          color: CustomColors.accentColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CREDITS ',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: CustomColors.scaffoldColor,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Code by : ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: CustomColors.scaffoldColor,
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap:
                            () => HelperFunctions.launchCustomURL(
                              url: 'https://x.com/adarshvjpandey',
                            ),
                        child: Text(
                          'me',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: CustomColors.scaffoldColor,
                            color: CustomColors.scaffoldColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'UI by : ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: CustomColors.scaffoldColor,
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,

                      child: GestureDetector(
                        onTap:
                            () => HelperFunctions.launchCustomURL(
                              url: 'https://x.com/praha37v',
                            ),
                        child: Text(
                          '@praha37v',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: CustomColors.scaffoldColor,
                            color: CustomColors.scaffoldColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
