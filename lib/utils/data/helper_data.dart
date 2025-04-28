import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/constants/image_path.dart';
import 'package:portfolio/utils/constants/text_string.dart';

class HelperData {
  HelperData._();

  static Map<String, Map<String, String>> techStack = {
    'Flutter': {
      'icon': ImagePath.flutterIconPath,
      'url': 'https://flutter.dev',
    },
    'Java': {
      'icon': ImagePath.javaIconPath,
      'url': 'https://www.oracle.com/java/',
    },
    'Spring Boot': {
      'icon': ImagePath.springBootIconPath,
      'url': 'https://spring.io/projects/spring-boot',
    },
    'Go': {'icon': ImagePath.golangIconPath, 'url': 'https://go.dev'},
  };

  static List<Map<String, IconData>> descriptionData = [
    {"India": Bootstrap.pin_map},
    {"English & Hindi": Bootstrap.globe},
    {"MCA": FontAwesome.graduation_cap_solid},
    {"IST": Bootstrap.clock},
    {"TIMSCDR": Bootstrap.book},
    {"Kung-Fu Panda Fan": FontAwesome.film_solid},
  ];

  // Goals & Objectives → Research → Wireframe → High-Fidelity Design → Interactive Prototyping → Client Approval → Development → Launch → Post-Launch Support

  static List<Map<String, IconData>> workflowData = [
    {"Goals & Objective": FontAwesome.crosshairs_solid},
    {"Research": FontAwesome.magnifying_glass_solid},
    {"Design": FontAwesome.draw_polygon_solid},
    {"Prototyping": Icons.apps},
    {"Client Approval": Bootstrap.arrow_right},
    {"Deployment": FontAwesome.rocket_solid},
  ];

  static List<String> workflowDataDescription = [
    "Define the project's purpose, vision, and success metrics.",
    "Analyze users, competitors, and market to gather insights.",
    "Create basic layout and structure without design elements.",
    "Build a clickable mockup to simulate the real experience.",
    "Present final design for client feedback and formal approval.",
    "Turn designs into a working app/site through code.",
  ];
  static bool isAvailable = true;
  static List<Map<String, String>> testimonials = [
    {
      "name": "Chaitanya Amle",
      "location": "Mumbai",
      "date": "July 2024",
      "testimonial":
          "I had the pleasure of working with Adarsh Pandey during their internship at IDZ Digital Pvt. Ltd. They made significant contributions to our Flutter projects with their strong coding skills and eagerness to learn. Adarsh Pandey was proactive, reliable, and a great team player. I highly recommend them for any future opportunities in Software Development.",
      "imgPath": "assets/images/testimonial1.png",
    },
    {
      "name": "Saurav Upadhyay",
      "location": "Mumbai",
      "date": "Jan 2024",
      "testimonial":
          "Adarsh Pandey worked very well, resolved various bugs, and added amazing features using his strong skillset. His contributions significantly improved the project quality.",
      "imgPath": "assets/images/profile.png",
    },
  ];
  static List<Map<String, IconData>> servicesData = [
    {"Mobile App Development": Bootstrap.phone},
    {"Website Development": Bootstrap.laptop},
    {"Linux Development": FontAwesome.linux_brand},
  ];

  static List<String> projectImages = [
    "${ImagePath.basePath}news_app.png",
    "${ImagePath.basePath}mahalaxmi-developers.png",
    "${ImagePath.basePath}news_app.png",
    "${ImagePath.basePath}mahalaxmi-developers.png",
    "${ImagePath.basePath}news_app.png",
  ];
}
