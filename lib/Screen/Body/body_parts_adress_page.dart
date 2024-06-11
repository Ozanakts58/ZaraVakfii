import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///import 'package:untitled27/Screen/Body/pets_more_services.dart';
///import 'package:untitled27/Screen/Body/popular_product.dart';
import 'package:untitled27/model/model.dart';

class BodyPartsAdress extends StatefulWidget {
  const BodyPartsAdress({Key? key}) : super(key: key);

  @override
  State<BodyPartsAdress> createState() => _BodyPartsBursState();
}

class _BodyPartsBursState extends State<BodyPartsAdress> {
  ///late Future<ListResult> futureFiles;
/*
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseStorage.instance.ref('/files').listAll();
  }*/

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              children: [
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "İban ve Adres Bilgileri",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                Text(
                  "Öğrencilere Burs Yardımı İçin İban Adresi\nTR6 1000 0056 1654 5668 50162 2660\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Karşıyaka Mahallesi"
                  "\nMehmet Habib Soluk Caddesi"
                  "\nbina No: 34 Daire 2"
                  "\nSivas / Zara"
                  "\n\n\nSeyrantepe Mahallesi"
                  "\nCesur Caddesi"
                  "\n1854 sokak \nbina No: 54 Daire 8 \n Kağıthane İstanbul"
                  "\n\nMail Adresi: zara@hizmetvakfi.org.com.tr",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
