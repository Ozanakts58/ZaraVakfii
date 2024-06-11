///CarouselSlider eklenmesi gerektiği için bu sayfa stateful çevrilmis hali body_parts_slider

///import 'dart:js';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///import 'package:untitled27/Screen/Body/pets_more_services.dart';
///import 'package:untitled27/Screen/Body/popular_product.dart';
import 'package:untitled27/model/model.dart';

class BodyPartsBurs extends StatefulWidget {
  const BodyPartsBurs({Key? key}) : super(key: key);

  @override
  State<BodyPartsBurs> createState() => _BodyPartsBursState();
}

class _BodyPartsBursState extends State<BodyPartsBurs> {
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
                        "Nasıl Burs Alabilirim?",
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
                  "KİMLER BURS ALMAYA MÜRACAAT EDEBİLİR\n-Ailesi Zara ilçe nüfüsüna oayıtlı olan LİSANS öğrencileri \n\nİSTENİLEN EVRAKLAR\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1.Öğrenci Belgesi (E-Devletten Alınabilir)"
                  "\n2.Öğrenim Kurumuna Yeni Kayıt Olan Öğrenciler İçin Sınav Sonuç Belgesi"
                  "\n3.Ara Sınıf Öğrencileri İçin Not Durum (Transkript) Belgesi"
                  "\n4.Engelli Olanlar İçin Engelli Raporu"
                  "\n5.Anne Veya Babası Engelli Olanlar İçin Anne, Babanın Engelli Raporu"
                  "\n6.Şehit Veya Gazi Çocukları İçin Durumlarını Gösterir Belge"
                  "\n7.Sorgu Dilekçesi / Islak imzalı olacak (İndirmek İçin Tıklayın. Yazıcıdan Çıktı Alarak İstenen Bilgileri Doldurunuz)"
                  "\n8.Fotoğraf (1 Adet)",
                  style: TextStyle(fontSize: 16),
                ),
                Divider(),
                Text(
                  "ÖNCELİK KRİTERLERİ\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1. Anne ve babasından birini veya her ikisini kaybetmiş öğrenciler önceliklidir."
                  "\n2.Ailesinde şehit ve gazi bulunan öğrenciler önceliklidir."
                  "\n3.Sağlık raporu ile tespit edilmiş, belirli bir oranda engeli bulunan öğrenciler önceliklidir."
                  "\n4.Master veya doktora yapan öğrenciler önceliklidir."
                  "\n5.25 yaş altı öğrenciler önceliklidir."
                  "\n6.Üniversite giriş sınavında, kazandığı bölümün dalında ilk 5.000'e giren öğrenciler ayrıca ödüllendirilecektir."
                  "\n7.Başka bir kurumdan burs almayan öğrenciler önceliklidir."
                  "\n8.Alttan dersi olmayan öğrenciler önceliklidir.",
                  style: TextStyle(fontSize: 16),
                ),

                ///Firebase den dosya almak için oluşturuldu çalışmıyor
                /*Container(
                  child: FutureBuilder<ListResult>(
                    future: futureFiles,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final files = snapshot.data!.items;

                        ;

                        return ListView.builder(
                          itemCount: files.length,
                          itemBuilder: (context, index) {
                            final file = files[index];

                            return ListTile(
                              title: Text(file.name),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.download,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text("Error occured"),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                )*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*
class BodyPartsBurs extends StatelessWidget {
  const BodyPartsBurs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child:const Column(
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
                        "Nasıl Burs Alabilirim?",
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
                  "KİMLER BURS ALMAYA MÜRACAAT EDEBİLİR\n-Ailesi Zara ilçe nüfüsüna oayıtlı olan LİSANS öğrencileri \n\nİSTENİLEN EVRAKLAR\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1.Öğrenci Belgesi (E-Devletten Alınabilir)"
                      "\n2.Öğrenim Kurumuna Yeni Kayıt Olan Öğrenciler İçin Sınav Sonuç Belgesi"
                      "\n3.Ara Sınıf Öğrencileri İçin Not Durum (Transkript) Belgesi"
                      "\n4.Engelli Olanlar İçin Engelli Raporu"
                      "\n5.Anne Veya Babası Engelli Olanlar İçin Anne, Babanın Engelli Raporu"
                      "\n6.Şehit Veya Gazi Çocukları İçin Durumlarını Gösterir Belge"
                      "\n7.Sorgu Dilekçesi / Islak imzalı olacak (İndirmek İçin Tıklayın. Yazıcıdan Çıktı Alarak İstenen Bilgileri Doldurunuz)"
                      "\n8.Fotoğraf (1 Adet)",
                  style: TextStyle(fontSize: 16),
                ),
                Divider(),
                Text(
                  "ÖNCELİK KRİTERLERİ\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1. Anne ve babasından birini veya her ikisini kaybetmiş öğrenciler önceliklidir."
                      "\n2.Ailesinde şehit ve gazi bulunan öğrenciler önceliklidir."
                      "\n3.Sağlık raporu ile tespit edilmiş, belirli bir oranda engeli bulunan öğrenciler önceliklidir."
                      "\n4.Master veya doktora yapan öğrenciler önceliklidir."
                      "\n5.25 yaş altı öğrenciler önceliklidir."
                      "\n6.Üniversite giriş sınavında, kazandığı bölümün dalında ilk 5.000'e giren öğrenciler ayrıca ödüllendirilecektir."
                      "\n7.Başka bir kurumdan burs almayan öğrenciler önceliklidir."
                      "\n8.Alttan dersi olmayan öğrenciler önceliklidir.",
                  style: TextStyle(fontSize: 16),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
