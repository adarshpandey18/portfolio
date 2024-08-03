import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/experience_tile.dart';
import 'package:portfolio/widgets/fontawesome_icon.dart';
import 'package:portfolio/widgets/skills_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopAboutPage extends StatefulWidget {
  const DesktopAboutPage({super.key});

  @override
  State<DesktopAboutPage> createState() => _DesktopAboutPageState();
}

class _DesktopAboutPageState extends State<DesktopAboutPage> {
  // function to launch any other link throught parameter
  Future launchLink(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw "Could not launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABOUT ME",
                          style: TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 76,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "I am a app developer based in India. Has Computer Science background.",
                                style: TextStyle(fontSize: 32),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "I am a passionate Computer Science student with a strong interest in application development and Java programming. I love exploring new technologies and applying them to solve real-world problems. Currently, I'm honing my skills in Flutter and Firebase to create robust mobile applications.",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () => launchLink(
                                        'https://drive.google.com/file/d/1mK_3AtPgi3o0hiqryqdE-txjOTcRQMk1/view?usp=sharing'),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      foregroundColor:
                                          AppColors.backgroundColor,
                                      backgroundColor: AppColors.accentColor,
                                      elevation: 0,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    icon: const Icon(Icons.download),
                                    iconAlignment: IconAlignment.end,
                                    label: const Text(
                                      "DOWNLOAD RESUME",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  IconButton(
                                    onPressed: () => launchLink(
                                        'https://www.linkedin.com/in/adarshpandey18/'),
                                    icon: const FaIcon(
                                        FontAwesomeIcons.linkedinIn),
                                    iconSize: 26,
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        iconColor: AppColors.accentColor,
                                        fixedSize: const Size(54, 54)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  IconButton(
                                    onPressed: () => launchLink(
                                        'https://github.com/adarshpandey18/'),
                                    icon: const FaIcon(FontAwesomeIcons.github),
                                    iconSize: 26,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.secondaryColor,
                                      iconColor: AppColors.accentColor,
                                      fixedSize: const Size(54, 54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 700,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/about_img.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MY CAPABILITES",
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontSize: 76,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "I am always looking to add more skills.",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: Skills.skills.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5),
                          itemBuilder: (BuildContext context, int index) {
                            return SkillsTile(title: Skills.skills[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              const Divider(
                color: AppColors.secondaryColor,
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "MY Experience",
                      style: TextStyle(
                        color: AppColors.accentColor,
                        fontSize: 76,
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                      ),
                    ),
                  ),
                  Container(
                    child: Flexible(
                      flex: 1,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: Experience.experience.length,
                        itemBuilder: (context, index) {
                          var experience = Experience.experience.entries
                              .elementAt(index)
                              .value;
                          return ExperienceTile(
                            isFirst: index == 0,
                            isLast: index == Experience.experience.length - 1,
                            isPast: experience['isPast'],
                            role: experience['role'],
                            companyName: experience['companyName'],
                            description: experience['description'],
                            date: experience['date'],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              const Divider(
                color: AppColors.secondaryColor,
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LET's CONNECT",
                        style: TextStyle(
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          color: AppColors.accentColor,
                          fontSize: 76,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Say hello at ",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => launchLink(
                                'mailto:itsadarshvijaypandey@gmail.com'),
                            child: const Text(
                              "itsadarshvijaypandey@gmail.com",
                              style: TextStyle(
                                color: AppColors.accentColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(
                            "For more info, here's my ",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => launchLink(
                                'https://drive.google.com/file/d/1mK_3AtPgi3o0hiqryqdE-txjOTcRQMk1/view?usp=sharing'),
                            child: const Text(
                              "resume",
                              style: TextStyle(
                                color: AppColors.accentColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          IconFont(
                            url: 'https://x.com/adarshvjpandey',
                            icon: FontAwesomeIcons.xTwitter,
                          ),
                          IconFont(
                            url: 'https://linkedin.com/in/adarshpandey18',
                            icon: FontAwesomeIcons.linkedinIn,
                          ),
                          IconFont(
                            url: 'https://github.com/adarshpandey18',
                            icon: FontAwesomeIcons.github,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
