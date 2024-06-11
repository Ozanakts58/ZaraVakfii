import 'package:flutter/material.dart';
import 'package:untitled27/Screen/Body/body_parts.dart';
import 'package:untitled27/Screen/Body/body_parts_adress_page.dart';
import 'package:untitled27/Screen/Body/body_parts_burs_page.dart';
import 'package:untitled27/Screen/Body/body_parts_slider.dart';
import 'package:untitled27/Screen/Footer/footer.dart';
import 'package:untitled27/Screen/Header/header_menu.dart';
import 'package:untitled27/Screen/Header/header_parts.dart';
import 'package:untitled27/Screen/Header/header_parts_for_other_pages.dart';

class AdressScreen extends StatefulWidget {
  const AdressScreen({super.key});

  @override
  _BursScreen createState() => _BursScreen();
}

class _BursScreen extends State<AdressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    "images/zaraVakfi.png",
                  ),
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // for header parts
            HeaderPartsOther(),
            // body parts
            BodyPartsAdress(),
            // footer parts
            FooterParts(),
          ],
        ),
      ),
    );
  }
}