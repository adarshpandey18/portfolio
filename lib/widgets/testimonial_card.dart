import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';

class TestimonialCard extends StatelessWidget {
  final String name;
  final String location;
  final String date;
  final String imgPath;
  final String testimonialText;
  const TestimonialCard({
    super.key,
    required this.name,
    required this.location,
    required this.date,
    required this.imgPath,
    required this.testimonialText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: CustomColors.lightCardColor,
          border: Border.all(
            color: CustomColors.extraLightCardColor,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(imgPath, height: 50, width: 50),
                    ),
                    const SizedBox(width: 6),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          name,
                          style: Theme.of(context).textTheme.labelLarge!
                              .copyWith(color: CustomColors.textColor),
                        ),
                        Text(
                          location,
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(
                            color: CustomColors.doubleExtraLightCardColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: CustomColors.doubleExtraLightCardColor,
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              testimonialText,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
