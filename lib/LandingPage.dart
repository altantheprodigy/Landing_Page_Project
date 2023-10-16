import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';
import 'package:landing_page/Komponen/Menu.dart';
import 'Komponen/GopayTab.dart';
import 'package:landing_page/Komponen/ShopTab.dart';
import 'package:landing_page/Komponen/ShopTab1.dart';
import 'package:landing_page/Komponen/AdsTab.dart';
import 'package:landing_page/Komponen/ExpTab.dart';
import 'package:landing_page/Komponen/QuickAcces.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 16.0;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(size.width * (padSize * 5 / size.width)),
          child: Container(
            color: AppColors.greenAppBar,
            padding:  EdgeInsets.all(size.width * (padSize / size.width)),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBar(
                    icon: Icons.search,
                    text: 'Find services, food, or place',
                    onTap: () {
                    },
                  ),
                  SizedBox(width: size.width * (padSize / size.width),),
                  RoundedIconButton(
                    icon: Icons.person,
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             GopayTab(),
             ShopTab(),
             ExpTab(),
             QuickAcces(),
             AdsTab(),
           ],
          ),
        )
      );
  }
}

