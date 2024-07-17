import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:westgate_pest_control_website_/pages/website_page.dart';
import 'package:westgate_pest_control_website_/themes/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize shared preferences for all platforms
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const WebsitePage(),
    );
  }
}
