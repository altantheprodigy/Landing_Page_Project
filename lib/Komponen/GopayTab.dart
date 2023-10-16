import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';


class GopayTab extends StatefulWidget {
  const GopayTab({Key? key}) : super(key: key);

  @override
  State<GopayTab> createState() => _GopayTabState();
}

class _GopayTabState extends State<GopayTab> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final padSize = 10.0;
    final ukuranWidPad = size.width * (padSize / size.width);
    final ukuruanMar = size.width * (padSize * 2 / size.width);


    return Container(
      padding: EdgeInsets.all(ukuranWidPad),
      decoration: BoxDecoration(
          color: AppColors.blueGotab,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      margin: EdgeInsets.all(ukuruanMar),
      child: Row(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 63,
                maxWidth: 140,
                minHeight: 60,
                minWidth: 100
              ),
              child: ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GopaySlice(harga: 'Rp9.280', imageAssetPath: 'images/gopay.png',desc:  'Klik & cek riwayat',),
                      GopaySlice(harga: 'Rp9.280', imageAssetPath: 'images/gopaylater.png',desc:  'Klik & cek riwayat',),
                    ],
                  );
                },
              ),
            ),
          ),
          OptionContainer(judul: "Bayar", icon: Icons.arrow_upward_rounded,),
          OptionContainer(judul: "Top Up", icon: Icons.add,),
          OptionContainer(judul: "Eksplor", icon: Icons.rocket_launch_rounded,)
        ],
      ),
    );
  }
}
