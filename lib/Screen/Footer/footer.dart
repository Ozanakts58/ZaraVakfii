import 'package:flutter/material.dart';
import 'package:untitled27/constants.dart';

class FooterParts extends StatelessWidget {
  const FooterParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            "images/zaralilarVakfi.png",
            height: 360,
            width: 360,
            fit: BoxFit.fitWidth,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Zaralılar Yardımlaşma ve Hizmet Vakfı",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          const Text(
            "Kızılırmak nehrinin çıktığı Kızıldağ ile Anadolu'nun büyük platolarından biri olan Kösedağ ve Beydağları arasındaki düzlükte bulunan Zara'da yaşayanlar yahut kasaba dışına çıkan hemşehriler arasında dayanışma ve yardımlaşmayı sağlamak ve bu samimi isteği simgeleyip sonsuza dek güçlü sürdürmek, onlara maddi ve manevi yardımlarda bulunmak ve yörenin genel hizmetlerine katkıda bulunmak.\nbilgi@zaravakfi.org.tr",
            /*"Pets are domesticated animals kept primarily for companionship, pleasure, or as a hobby, rather than for work or food production. They play significant roles in the lives of many people, providing companionship, emotional support, and sometimes even therapeutic benefits. Pets come in various shapes, sizes, and species. Common types of pets include dogs, cats, birds, fish, rabbits,",*/
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
          const Text(
            "bilgi@zaravakfi.org.tr",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
