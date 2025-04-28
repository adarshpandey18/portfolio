import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/data/helper_data.dart';
import 'package:portfolio/widgets/center_button_widget.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CustomColors.cardColor,
        border: Border.all(color: CustomColors.extraLightCardColor, width: 0.8),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Subheading Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Bootstrap.briefcase_fill,
                color: CustomColors.accentColor,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                TextString.workSubHeading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Main Heading
          Text(
            TextString.worksHeading,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Carousel Slider
          Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: CarouselSlider.builder(
                  itemCount: HelperData.projectImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final data = HelperData.projectImages[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(data, fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayCurve: Curves.easeInOut,
                  ),
                ),
              ),

              // Top gradient
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                width: 30,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        CustomColors.cardColor.withOpacity(0.9),
                        CustomColors.cardColor.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),

              // Bottom gradient
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                width: 30,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.centerLeft,
                      begin: Alignment.centerRight,
                      colors: [
                        CustomColors.cardColor.withOpacity(0.8),
                        CustomColors.cardColor.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),

              // Center button
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CenterButtonWidget(title: TextString.worksButtonText),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
