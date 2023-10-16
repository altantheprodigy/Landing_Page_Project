import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';

class AdsTab extends StatelessWidget {
  const AdsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdsContainer(
           text: "Makin Seru",
           text1: "Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia",
           imageAssetPath: "images/Ads1.png"
       ),
        AdsContainer(
            text: "Makin Seru",
            text1: "Kirim apapun dengan GoSend",
            imageAssetPath: "images/gosend.jpeg"
        ),
        AdsContainer(
            text: "Makin Seru",
            text1: "Sambungin Akun ke Tokopedia, Banyakin Untung",
            imageAssetPath: "images/Ads2.png"),

        AdsContainer(
            text: "Makin Seru",
            text1: "Promo Belanja Online 10.10: Cashback hingga Rp100.000",
            imageAssetPath: "images/Ads3.png"),
      ],
    );
  }
}
