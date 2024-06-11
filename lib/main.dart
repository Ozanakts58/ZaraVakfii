import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled27/Screen/Body/body_parts_burs_page.dart';
import 'package:untitled27/Screen/Body/body_parts_slider.dart';
import 'package:untitled27/Screen/Body/body_sliders_parts.dart';
import 'package:untitled27/Screen/burs_screen.dart';
import 'package:untitled27/Screen/commite.dart';
import 'Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.habibiTextTheme(),
      ),
      ///home: const HomeScreen(),
      ///home: const Commite(),
      home: const HomeScreen(),
      ///home: const BodyPartsSlider(),
      ///home: const BodySlidersParts(),
    );
  }
}

