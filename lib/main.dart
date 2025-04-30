import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/pages/home/home_page.dart';
import 'package:portfolio/utils/theme/custom_theme.dart';

void main() async {
  await Motion.instance.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  Motion.instance.setUpdateInterval(60.fps);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adarsh Pandey',
      theme: CustomTheme.customThemeData,
      home: HomePage(),
    );
  }
}
