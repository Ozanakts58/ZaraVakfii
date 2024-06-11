import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled27/Screen/Header/header_menu.dart';
import 'package:untitled27/Screen/Header/profile_and_cart.dart';
import 'package:untitled27/Screen/Header/search_bar.dart';
import 'package:untitled27/constants.dart';
import 'package:untitled27/responsive.dart';

class HeaderPartsOther extends StatelessWidget {
  const HeaderPartsOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ResponsiveWidget(
                    // mobile parts
                    mobile: Row(
                      children: [
                        Builder(
                          builder: (context) => IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "  Zara Vakfı",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),

                        const Spacer(),
                        /// for profile and cart icons
                        ///const ProfileAndCart(),
                      ],
                    ),
                    desktop: const Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage(
                              "images/zaraVakfi.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Zara Vakfı",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        // for web menu items
                        WebMenu(),
                        Spacer(),
                        /// for profile and cart icons
                        ///ProfileAndCart(),
                      ],
                    ),
                  ),
                  // for both web and mobile
                  const SizedBox(
                    height: 30,
                  ),
                  // for search bar,
                  ///const MySearchBar(),
                  ///const SizedBox(height: 50),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}