import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';

class QuickAcces extends StatelessWidget {
  const QuickAcces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 15.0;

    return Padding(padding: EdgeInsets.only(left: size.width * (padSize / size.width), top: 1, right: size.width * (padSize / size.width)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * (padSize / 2 / size.width)),
            child: Text(
              "Akses Cepat",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Lato',
                  fontSize: 16
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(size.width * (padSize / size.width)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey)
            ),
            child: Column(
              children: [
                RowQuickAccess(desc: "Pintu Masuk Motor, MNC LAND", imageAssetPath: "images/ride.png", icon: Icons.arrow_forward_ios_rounded,),
                SizedBox(height: size.width * (padSize / size.width),),
                RowQuickAccess(desc: "Pintu Masuk Motor, MNC LAND", imageAssetPath: "images/ride.png", icon: Icons.arrow_forward_ios_rounded,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
