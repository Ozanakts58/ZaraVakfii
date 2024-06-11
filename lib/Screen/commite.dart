import 'package:flutter/material.dart';
import 'package:untitled27/Screen/Body/body_parts.dart';
import 'package:untitled27/Screen/Body/body_parts_slider.dart';
import 'package:untitled27/Screen/Footer/footer.dart';
import 'package:untitled27/Screen/Header/header_menu.dart';
import 'package:untitled27/Screen/Header/header_parts.dart';
import 'package:untitled27/Screen/Header/header_parts_for_other_pages.dart';

class Commite extends StatefulWidget {
  const Commite({super.key});

  @override
  _CommiteState createState() => _CommiteState();
}

class _CommiteState extends State<Commite> {
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
            BodyParts(),
            // footer parts
            FooterParts(),
          ],
        ),
      ),
    );
  }
}