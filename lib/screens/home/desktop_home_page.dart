import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/fontawesome_icon.dart';
import 'package:portfolio/widgets/launcher_button.dart';
import 'package:portfolio/widgets/project.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
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
      body: Column(
        children: [
          // <<<<<<<<<<< NAVBAR SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            height: 96,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ADARSH V PANDEY",
                  style: TextStyle(
                    color: AppColors.accentColor,
                    fontSize: 32,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: const Text(
                        "Work",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('/about'),
                      child: const Text(
                        "About",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: const Text(
                        "Contact",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // <<<<<<<<<<< MAIN SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // <<<<<<<<<<< HERO SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>
                    const SizedBox(
                      height: 96,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 544,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: 101,
                                        fontFamily:
                                            GoogleFonts.bebasNeue().fontFamily,
                                        height: 1.0,
                                      ),
                                      children: const [
                                        TextSpan(text: "HI, I AM "),
                                        TextSpan(
                                          text: "ADARSH PANDEY",
                                          style: TextStyle(
                                              color: AppColors.accentColor),
                                        )
                                      ]),
                                ),
                                const Text(
                                  "A Software Developer passionate about building accessible and user friendly apps, webiste &  software",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () => {},
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            AppColors.backgroundColor,
                                        backgroundColor: AppColors.accentColor,
                                        elevation: 0,
                                        fixedSize: const Size(187, 54),
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      icon: const Icon(Icons.arrow_outward),
                                      iconAlignment: IconAlignment.end,
                                      label: const Text(
                                        "CONTACT ME",
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
                                      icon:
                                          const FaIcon(FontAwesomeIcons.github),
                                      iconSize: 26,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        iconColor: AppColors.accentColor,
                                        fixedSize: const Size(54, 54),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/profile_pic.jpg',
                                fit: BoxFit.cover,
                                height: 700,
                                width: 600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),

                    const Divider(
                      color: AppColors.secondaryColor,
                    ),

                    // <<<<<<<<<<< FEATURED PROJECT SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        //Feature Product Headline
                        SizedBox(
                          width: 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "FEATURED PRODUCTS",
                                style: TextStyle(
                                  fontSize: 76,
                                  color: AppColors.accentColor,
                                  fontFamily:
                                      GoogleFonts.bebasNeue().fontFamily,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Here are some of the selected projects that showcase my passion for app development",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Feature Product headline end

                        // Projects
                        Project(
                          title: "NEWS-APP",
                          description:
                              "The News App is a mobile application developed using Flutter and Dart programming languages. It leverages the News API to fetch news articles categorized by topics and sources. Users can explore different categories, search for specific articles, and view detailed information about each article. \n• Category Screen: Browse news articles by different categories such as business, technology, sports, etc. \n• Search Screen: Search for specific news articles using keywords \n• Article Details: View information about each article including images, source, date, description, and content \n• Navigation Drawer: Easy navigation through different sections of the app \n•  URL Launcher Integration: Utilizes url_launcher to open article URLs in the default browser.",
                          buttonTitle: "SEE ON GITHUB",
                          imageUrl: 'assets/images/news_app.png',
                          onTapLink: () => launchLink(
                              'https://github.com/adarshpandey18/News-App'),
                        ),
                        Project(
                          title: "Brew-Crew",
                          description:
                              "Brew Crew is a Flutter application for managing your brew preferences. Users can update their brew settings such as sugar level, strength, and name \n• User Authentication : Users can sign up, sign in, and sign out securely using Firebase Authentication.\n• Database Integration : User data and brew preferences are stored in Cloud Firestore.\n• Settings Panel : Users can update their brew settings, including sugar level, strength, and name.\n• Real-time Updates : User data and brew preferences are updated in real-time across devices.\n• Responsive Design : The app is designed to work on both Android and iOS devices.",
                          buttonTitle: "SEE ON GITHUB",
                          imageUrl: 'assets/images/brew_crew.jpeg',
                          onTapLink: () => launchLink(
                              'https://github.com/adarshpandey18/Brew-Crew'),
                        ),
                        Project(
                          title: "WEATHER-APP",
                          description:
                              "Weather App is a Flutter application that displays weather forecast data using the OpenWeatherMap API.\n• Display current weather conditions including temperature, sky condition, pressure, wind speed, and humidity.\n• Hourly forecast for the next 5 hours.\n• Additional information section displaying humidity, wind speed, and pressure.\n• Refresh button to update weather data.",
                          buttonTitle: "SEE ON GITHUB",
                          imageUrl: 'assets/images/weather_app.jpg',
                          onTapLink: () => launchLink(
                              'https://github.com/adarshpandey18/Weather-App'),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.secondaryColor,
                    ),
                    // <<<<<<<<<<< ABOUT ME PROJECT SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>

                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "ABOUT ME",
                                style: TextStyle(
                                  color: AppColors.accentColor,
                                  fontSize: 76,
                                  fontFamily:
                                      GoogleFonts.bebasNeue().fontFamily,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
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
                                    LauncherButton(
                                      buttonTitle: 'MORE ABOUT ME',
                                      onTap: () => Navigator.of(context)
                                          .pushReplacementNamed('/about'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Divider(
                      color: AppColors.secondaryColor,
                    ),
                    // <<<<<<<<<<< CONTACT FORM SECTION >>>>>>>>>>>>>>>>>>>>>>>>>>>
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LET's CONNECT",
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.bebasNeue().fontFamily,
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
                                    url:
                                        'https://linkedin.com/in/adarshpandey18',
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
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
