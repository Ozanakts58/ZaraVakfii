import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled27/Screen/adress_screen.dart';
import 'package:untitled27/Screen/burs_screen.dart';
import 'package:untitled27/Screen/commite.dart';
import 'package:untitled27/Screen/home_screen.dart';
import 'package:untitled27/Screen/news_screen.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({super.key});

  /*static List<Widget> screens = [
    Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Ana Sayfa",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
    Container(

      padding: const EdgeInsets.all(10),
      child: const Text(
        "Hakkında",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Duyurular",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Burs",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        "İletişim",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  ];*/
  /// static int _slectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: InkWell(
            child: Ink(
              height: 40,
              width: 90,
              child: const Center(
                child: Text("AnaSayfa",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ),
          ),
        ),
        //SizedBox(),
        /*InkWell(
          child: Ink(
            height: 40,
            width: 90,
            child: const Center(
              child: Text("Hakkımızda",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Commite(),
              ),
            );
          },
        ),*/
        InkWell(
          child: Ink(
            height: 40,
            width: 90,
            child: const Center(
              child: Text(
                "Haberler",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewsScreen(),
              ),
            );
          },
        ),
        InkWell(
          child: Ink(
            height: 40,
            width: 80,
            child: const Center(
              child: Text(
                "Yönetim",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Commite(),
              ),
            );
          },
        ),
        InkWell(
          child: Ink(
            height: 40,
            width: 80,
            child: const Center(
              child: Text(
                "Burs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BursScreen(),
              ),
            );
          },
        ),
        InkWell(
          child: Ink(
            height: 40,
            width: 90,
            child: const Center(
              child: Text(
                "İletişim",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AdressScreen(),
              ),
            );
          },
        ),
        /*
        menuItems("Ana Sayfa"),
        menuItems("Hakkımızda"),
        menuItems("Haberler"),
        menuItems("Duyurular"),
        menuItems("Burs"),
        menuItems("İletişim"),*/
      ],
    );

    /*return Scaffold(
      appBar: AppBar(

      ),
    );






    /*return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /*ListTile(
          title: const Text("Ana Sayfa"),
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          )),
        ),
        ListTile(
          title: const Text("Hakkımızda"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Commite(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Haberler"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewsScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Yönetim"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Commite(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Burs"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BursScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: Text("İletişim"),
          onTap: () {},
        ),*/
        menuItems(
          "Ana Sayfa",
        ),
        menuItems(
          "Hakında",
        ),
        menuItems("Duyurular"),
        menuItems("Burs"),
        menuItems("Haberler"),
        menuItems("İletişim"),
      ],
    );*/
  }

  Container menuItems(title) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );*/
  }
}

class MobMenu extends StatelessWidget {
  const MobMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: const Text("Ana Sayfa"),
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          )),
        ),
        /*ListTile(
          title: const Text("Hakkımızda"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Commite(),
              ),
            );
          },
        ),*/
        ListTile(
          title: const Text("Haberler"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewsScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Yönetim"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Commite(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Burs"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BursScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("İletişim"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AdressScreen(),
              ),
            );
          },
        ),
        /*
        menuItems("Ana Sayfa"),
        menuItems("Hakkımızda"),
        menuItems("Haberler"),
        menuItems("Duyurular"),
        menuItems("Burs"),
        menuItems("İletişim"),*/
      ],
    );
  }

  Container menuItems(title) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
