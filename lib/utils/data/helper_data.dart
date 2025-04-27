import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/utils/constants/image_path.dart';

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
}
