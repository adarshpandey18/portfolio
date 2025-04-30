import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/data/helper_data.dart';
import 'package:portfolio/widgets/center_button_widget.dart';
import 'package:portfolio/widgets/social_media_tile.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

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
                Bootstrap.grid_fill,
                color: CustomColors.accentColor,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                TextString.servicesSubHeading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: CustomColors.labelTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Main Heading
          Text(
            TextString.servicesHeading,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            textAlign: TextAlign.center,
          ),
          Stack(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CarouselSlider.builder(
                  itemCount: HelperData.servicesData.length,
                  itemBuilder: (context, index, realIndex) {
                    final data = HelperData.servicesData[index];
                    final title = data.keys.first;
                    final iconData = data[title];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SocialMediaTile(
                        url: '',
                        isClickable: false,
                        title: title,
                        iconData: iconData ?? Icons.error,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    animateToClosest: true,
                    disableCenter: true,
                    enlargeCenterPage: false,
                    reverse: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 0),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
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
                height: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
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
          const SizedBox(height: 10),
          Stack(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CarouselSlider.builder(
                  itemCount: HelperData.servicesData.length,
                  itemBuilder: (context, index, realIndex) {
                    final data = HelperData.servicesData[index];
                    final title = data.keys.first;
                    final iconData = data[title];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SocialMediaTile(
                        url: '',
                        isClickable: false,
                        title: title,
                        iconData: iconData ?? Icons.error,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    disableCenter: true,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 0),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
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
                height: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        CustomColors.cardColor.withOpacity(0.9),
                        CustomColors.cardColor.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CenterButtonWidget(title: TextString.servicesButton),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
