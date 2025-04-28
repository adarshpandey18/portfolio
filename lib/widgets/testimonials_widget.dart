import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/data/helper_data.dart';
import 'package:portfolio/widgets/testimonial_card.dart';

class TestimonialsWidget extends StatelessWidget {
  const TestimonialsWidget({super.key});

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
                FontAwesome.masks_theater_solid,
                color: CustomColors.accentColor,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                TextString.testimonialSubHeading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Main Heading
          Text(
            TextString.testimonialHeading,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            textAlign: TextAlign.center,
          ),
          Divider(color: CustomColors.extraLightCardColor),
          const SizedBox(height: 20),
          // Testimonials List
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: HelperData.testimonials.length,
                  itemBuilder: (context, index, realIndex) {
                    final data = HelperData.testimonials[index];
                    return TestimonialCard(
                      name: data['name'] ?? 'Name',
                      location: data['location'] ?? 'Location',
                      date: data['date'] ?? 'Date',
                      imgPath: data['imgPath'] ?? 'assets/images/profile.png',
                      testimonialText:
                          data['testimonial'] ?? 'Testimonial Text',
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    scrollDirection: Axis.vertical,
                    height: double.infinity,
                    animateToClosest: true,
                    autoPlayCurve: Curves.ease,
                    pageSnapping: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    enlargeCenterPage: true,
                    disableCenter: true,
                    aspectRatio: 1,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          CustomColors.cardColor.withOpacity(0.9),
                          CustomColors.cardColor.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          CustomColors.cardColor.withOpacity(0.9),
                          CustomColors.cardColor.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
