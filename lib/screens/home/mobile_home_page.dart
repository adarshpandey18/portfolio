import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/fontawesome_icon.dart';
import 'package:portfolio/widgets/launcher_button.dart';
import 'package:portfolio/widgets/project_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  // function to launch any other link throught parameter
  Future launchLink(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw "Could not laucnh";
    }
  }

  final ScrollController _scrollController = ScrollController();
  GlobalKey contact = GlobalKey();
  GlobalKey work = GlobalKey();

  void scrollToContainer(GlobalKey key) {
    _scrollController.animateTo(
        key.currentContext!.findRenderObject()!.semanticBounds.top,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ADARSH PANDEY',
          style: TextStyle(
            fontFamily: GoogleFonts.bebasNeue().fontFamily,
            fontSize: 28,
            color: AppColors.accentColor,
          ),
        ),
      ),
      drawer: Drawer(
          surfaceTintColor: AppColors.accentColor,
          child: Column(
            children: [
              const DrawerHeader(
                child: FaIcon(
                  FontAwesomeIcons.code,
                  color: AppColors.accentColor,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/about');
                },
                leading: const FaIcon(
                  FontAwesomeIcons.question,
                  color: AppColors.accentColor,
                ),
                title: const Text(
                  'ABOUT',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          // <<<<<<<<<<<<<<<<<<< MAIN >>>>>>>>>>>>>>>>>>>>>>>>>>
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 57,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                  children: const [
                    TextSpan(text: 'HI, I AM \n'),
                    TextSpan(
                      style: TextStyle(color: AppColors.accentColor),
                      text: 'ADARSH PANDEY.',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "A Software Developer passionate about building accessible and user friendly apps, webiste &  software",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => (),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                      backgroundColor: AppColors.accentColor,
                      elevation: 0,
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
                    icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                    iconSize: 26,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                        iconColor: AppColors.accentColor,
                        fixedSize: const Size(54, 54)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () =>
                        launchLink('https://github.com/adarshpandey18/'),
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
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/profile_pic.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: AppColors.secondaryColor,
              ),
              // <<<<<<<<<<<<<<<<<<< FEATURED PRODUCTS >>>>>>>>>>>>>>>>>>>>>>>>>>
              const SizedBox(
                height: 30,
              ),

              Text(
                key: work,
                "FEATURED PRODUCTS",
                style: TextStyle(
                  fontSize: 43,
                  color: AppColors.accentColor,
                  fontFamily: GoogleFonts.bebasNeue().fontFamily,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Here are some of the selected projects that showcase my passion for app development",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              ProjectMobile(
                title: "NEWS-APP",
                description:
                    "The News App is a mobile application developed using Flutter and Dart programming languages. It leverages the News API to fetch news articles categorized by topics and sources. Users can explore different categories, search for specific articles, and view detailed information about each article. \n• Category Screen: Browse news articles by different categories such as business, technology, sports, etc. \n• Search Screen: Search for specific news articles using keywords \n• Article Details: View information about each article including images, source, date, description, and content \n• Navigation Drawer: Easy navigation through different sections of the app \n•  URL Launcher Integration: Utilizes url_launcher to open article URLs in the default browser.",
                buttonTitle: "SEE ON GITHUB",
                imageUrl: 'assets/images/news_app.png',
                onTapLink: () =>
                    launchLink('https://github.com/adarshpandey18/News-App'),
              ),
              ProjectMobile(
                title: "Brew-Crew",
                description:
                    "Brew Crew is a Flutter application for managing your brew preferences. Users can update their brew settings such as sugar level, strength, and name \n• User Authentication : Users can sign up, sign in, and sign out securely using Firebase Authentication.\n• Database Integration : User data and brew preferences are stored in Cloud Firestore.\n• Settings Panel : Users can update their brew settings, including sugar level, strength, and name.\n• Real-time Updates : User data and brew preferences are updated in real-time across devices.\n• Responsive Design : The app is designed to work on both Android and iOS devices.",
                buttonTitle: "SEE ON GITHUB",
                imageUrl: 'assets/images/brew_crew.jpeg',
                onTapLink: () =>
                    launchLink('https://github.com/adarshpandey18/Brew-Crew'),
              ),
              ProjectMobile(
                title: "WEATHER-APP",
                description:
                    "Weather App is a Flutter application that displays weather forecast data using the OpenWeatherMap API.\n• Display current weather conditions including temperature, sky condition, pressure, wind speed, and humidity.\n• Hourly forecast for the next 5 hours.\n• Additional information section displaying humidity, wind speed, and pressure.\n• Refresh button to update weather data.",
                buttonTitle: "SEE ON GITHUB",
                imageUrl: 'assets/images/weather_app.jpg',
                onTapLink: () =>
                    launchLink('https://github.com/adarshpandey18/Weather-App'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: AppColors.secondaryColor,
              ),
              // <<<<<<<<<<<<<<<<<<< ABOUT ME >>>>>>>>>>>>>>>>>>>>>>>>>>
              const SizedBox(
                height: 30,
              ),
              Text(
                "ABOUT ME",
                style: TextStyle(
                  fontSize: 43,
                  color: AppColors.accentColor,
                  fontFamily: GoogleFonts.bebasNeue().fontFamily,
                ),
              ),
              const Text(
                "I am a app developer based in India. Has Computer Science background.",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "I am a passionate Computer Science student with a strong interest in application development and Java programming. I love exploring new technologies and applying them to solve real-world problems. Currently, I'm honing my skills in Flutter and Firebase to create robust mobile applications.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              LauncherButton(
                buttonTitle: "MORE ABOUT ME",
                onTap: () => Navigator.of(context).pushNamed('/about'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: AppColors.secondaryColor,
              ),
              // <<<<<<<<<<<<<<<<<<< CONTACT >>>>>>>>>>>>>>>>>>>>>>>>>>
              const SizedBox(
                height: 30,
              ),
              Text(
                key: contact,
                "LET'S CONNECT",
                style: TextStyle(
                  fontSize: 43,
                  color: AppColors.accentColor,
                  fontFamily: GoogleFonts.bebasNeue().fontFamily,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Say hello at ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        launchLink('mailto:itsadarshvijaypandey@gmail.com'),
                    child: const Text(
                      "itsadarshvijaypandey@gmail.com",
                      style: TextStyle(
                        color: AppColors.accentColor,
                        fontSize: 14,
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
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => launchLink(
                        'https://drive.google.com/file/d/15OTvKC5hzYjHZFcrxLY0SnwGCMIqxPjM/view?usp=sharing'),
                    child: const Text(
                      "resume",
                      style: TextStyle(
                        color: AppColors.accentColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
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
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
