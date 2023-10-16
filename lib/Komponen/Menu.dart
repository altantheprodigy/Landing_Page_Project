import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), // Ini akan membuat GridView tetap di posisinya
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          // Ganti konten GridView dengan data sesuai dengan indeks
          if (index == 0) {
            return reusableContainer(
              backgroundColor: Color(0xFFE5F9D4),
              textColor: null,
              text: "GoRide",
              text1: null,
              image: Image.asset("images/motor.png", color: Color(0xFF3D872A),),
            );
          } else if (index == 1) {
            return reusableContainer(
              backgroundColor: Color(0xFFE5F9D4),
              textColor: null,
              text: "GoCar",
              text1: null,
              image: Image.asset("images/car.png", color: Color(0xFF3D872A),),
            );
          } else if (index == 2) {
            return reusableContainer(
              backgroundColor: Color(0xFFFAE3E2),
              textColor: null,
              text: "Food",
              text1: null,
              image: Image.asset("images/food.png", color: Color(0xFFDC3F3D),),
            );
          } else if (index == 3) {
            return reusableContainer(backgroundColor: Color(0xFFE5F9D4),
              textColor: null,
              text: "Send",
              text1: null,
              image: Image.asset("images/send.png", color: Color(0xFF3D872A),),
            );
          } else if (index == 4) {
           return reusableContainer(backgroundColor:Color(0xFFFAE3E2),
              textColor: null,
              height: 40,
              text: "GoMart",
              text1: null,
              image: Image.asset("images/mart.png", color:  Color(0xFFDC3F3D),),
            );
          } else if (index == 5) {
            return reusableContainer(backgroundColor: Color(0xFFD8F2F9),
              textColor: null,
              text: "Pulsa",
              text1: null,
              image: Image.asset("images/pulsa.png", color: Color(0xFF0AAFD9),),
            );
          } else if (index == 6) {
           return reusableContainer(backgroundColor: Color(0xFFEDEDED),
              textColor: null,
              text: "More",
              text1: null,
              image: Image.asset("images/more.png", color:Color(0xFF4A4A4A),),
            );
          } else if (index == 7) {
           return reusableContainer(backgroundColor: Color(0xFFEDEDED),
              textColor: null,
              text: "More",
              text1: null,
              image: Image.asset("images/more.png", color:Color(0xFF4A4A4A),),
            );
          }

          // Tambahkan blok lain sesuai dengan indeks lainnya
          // ...
        },
      ),
    );
  }
}
