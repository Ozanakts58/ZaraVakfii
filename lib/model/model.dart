//import 'dart:html';

class Product {
  String image;
  String title;


  Product({
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    title: "Başkan Eyüp Bayrak",
    image: "images/eyupbayrak.png",
  ),
  Product(
    title: "Eski Başkan ADNAN Şimşek",
    image: "images/adnansimsek.png",
  ),
  Product(
    title: "Üye Av. KAAN Dökmetaş",
    image: "images/avkaandokmetas.png",
  ),
  Product(
    title: "Genel Sekreter Av. AYKUT Bayrakçı",
    image: "images/avaykutbayrakci.png",
  ),

];