
import 'dart:io';
import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled27/Screen/Header/header_menu.dart';
import 'package:untitled27/Screen/Header/profile_and_cart.dart';
import 'package:untitled27/Screen/Header/search_bar.dart';
import 'package:untitled27/constants.dart';
import 'package:untitled27/responsive.dart';

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

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
                        // for profile and cart icons
                        //const ProfileAndCart(),
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

                        // for web menu items
                        WebMenu(),
                        Spacer(),
                        // for profile and cart icons
                        ///ProfileAndCart(),
                      ],
                    ),
                  ),
                  // for both web and mobile
                  const SizedBox(
                    height: 30,
                  ),
                  // for search bar,
                  ///  const MySearchBar(),
                  const SizedBox(height: 50),
                  ResponsiveWidget(
                    // for mobile
                    mobile: Column(
                      children: [
                        const Text(
                          "Zara'lı hemşehriler arasında \nardımlaşmayı sağlamak, maddi ve \nmanevi dayanışmada bulunmak",
                          /*"Zara'da yaşayanlar yahut kasaba dışına çıkan \nhemşehriler arasında dayanışma ve yardımlaşmayı sağlamak ve bu \nsamimi isteği simgeleyip sonsuza dek güçlü sürdürmek, \nonlara maddi ve manevi yardımlarda bulunmak ve yörenin \ngenel hizmetlerine katkıda bulunmak.",*/
                          /* ///"Unitl one has loved an animal,\na part of one's soul\nremains unawakened.",*/
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "images/zaraharitasi.png",
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 20),
                        //startShoppingButton(),
                      ],
                    ),
                    desktop: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                           Column(
                            children: [
                              const Text(
                                "Zara'lı hemşehriler arasında \nyardımlaşmayı sağlamak, \nmaddi ve manevi \ndayanışmada bulunmak",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //startShoppingButton(),
                            ],
                          ),
                          const Spacer(),
                          Expanded(
                            child: Image.asset(
                              "images/zaraharitasi.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
/*
  ElevatedButton startShoppingButton(){
    return ElevatedButton(onPressed: () {
      downloadFile();
      },
        child: Text("Sorgu Dilekçesi"),
    );
    }

    void downloadFile() async {
      var time = DateTime
          .now()
          .microsecondsSinceEpoch;
      var path = ""
    }


*/


  /// bu buton webde çalışıyor mobile emilatörde hata veriyor
  /*ElevatedButton startShoppingButton() {
    return ElevatedButton(
      onPressed: () =>
          downloadFile("/Screen/Header/ozan.jpg"),
      child: const Text(
        "Sorgu Dilekçesi",
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = "ozan";
    anchorElement.click();
  }*/
  ///bu koda indirmedi dosyayı açmadı
  /*
  ElevatedButton startShoppingButton() {
    return ElevatedButton(
      child: const Text("Burs Başvurusu"),
      onPressed: () => openFile(
        url:
            ///'https://docs.google.com/document/d/1j6gkDSyfsK3BlK68JlHQCXWJtB5sDoIY/edit?usp=drive_link&ouid=114078433962143649707&rtpof=true&sd=true',
            'https://github.com/Ozanakts58/todozapp/blob/master/Zara%20Yard%C4%B1mla%C5%9Fma%20ve%20Kalk%C4%B1nma%20Vakf%C4%B1.docx',
        fileName: 'sorguDilekcesi.doc',
      ),
    );
  }

  Future openFile({required String url, String? fileName}) async {
    final file = await downloadFile(url, fileName!);
    if (file == null) return;
    ///print('Path: ${file.path}');
    developer.log('Path: ${file.path}');
    OpenFile.open(file.path);


  }

  Future<File?> downloadFile(String url, String name) async {

    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');



    try {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 0),
        ),
      );

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
      return file;
    } catch (e) {
      return null;
    }
  }*/
  /// ilk başta  bos işlevsiz oluşturulan buton
  /*Container startShoppingButton() {
    return Container(
      height: 50,
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          "Burs Başvursu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }*/
}
