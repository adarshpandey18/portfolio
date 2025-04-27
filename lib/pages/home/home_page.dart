import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/home_page_desktop.dart';
import 'package:portfolio/pages/home/home_page_mobile.dart';
import 'package:portfolio/pages/home/home_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => HomePageDesktop(),
      tablet: (p0) => HomePageTablet(),
      mobile: (p0) => HomePageMobile(),
    );
  }
}
