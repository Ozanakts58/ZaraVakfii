import 'package:flutter/material.dart';
import 'package:untitled27/Screen/Footer/footer.dart';
import 'package:untitled27/Screen/Header/header_menu.dart';
import 'package:untitled27/Screen/Header/header_parts_for_other_pages.dart';
//import 'package:newsapp_test/components/categorySelector.dart';
import 'package:untitled27/components/newsCarousel.dart';
import 'package:untitled27/components/tiledNewsView.dart';
import 'package:untitled27/responsive.dart';
//import 'package:untitled25/components/topbar.dart';
//import 'package:untitled25/components/welcomeWidget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            //scrollDirection: Axis.vertical,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Container(
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TopBar(),
                        //SizedBox(height: 10),

                        ///WelcomeWidget(),
                      ],
                    ),
                  ),*/
                // for header parts
                const HeaderPartsOther(),
                const SizedBox(height: 5),
                NewsCarousel(),
                const SizedBox(
                  height: 15,
                ),
                //CategorySelector(),
                const SizedBox(
                  height: 5,
                ),
                /*ResponsiveWidget(
                    mobile: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [TiledNewsView()],
                      ),
                    ),
                    desktop: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [TiledNewsView()],
                      ),
                    ),
                  ),*/
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [TiledNewsView()],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const FooterParts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
