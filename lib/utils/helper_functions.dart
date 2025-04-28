import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunctions {
  HelperFunctions._(); // Private constructor for static-only class

  static Future<void> launchCustomURL({required String url}) async {
    try {
      final Uri uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication, 
        );
      } else {
        if (kDebugMode) {
          print('Cannot launch URL: $url');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception while launching URL: $e');
      }
    }
  }
}
