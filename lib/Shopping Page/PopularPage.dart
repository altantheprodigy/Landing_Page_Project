import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';


class popularPage extends StatefulWidget {
  const popularPage({Key? key}) : super(key: key);

  @override
  State<popularPage> createState() => _popularPageState();
}

class _popularPageState extends State<popularPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.cardDark
      ),
      child: Column(
        children: [
          judulPage(title: "Most Popular", title1: "View more"),
          shopCon(imagePath: 'images/gamepad.png', title: "Top Up", imageAssetPath: "images/TopUp.jpg"),
          shopCon(imagePath: 'images/listrik.png', title: "PLN", imageAssetPath: "images/pln.png"),
          shopCon(imagePath: 'images/sehat.png', title: "BPJS", imageAssetPath: "images/bpjs.png"),
          shopCon(imagePath: 'images/banyu.png', title: "PDAM", imageAssetPath: "images/pam.png"),
          SizedBox(height: 20,),
          judulPage(title: "Promo", title1: "View more"),
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.card,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: Container(
                          height: 60,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                          ),
                          child: Image.asset("images/Rectangle 55.png", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        height: 60,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
                        ),
                        child: Image.asset(
                          "images/pam.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                        child: Container(
                          height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.Green,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))
                      ),
                    )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )

      ],
      ),
    );
  }
}