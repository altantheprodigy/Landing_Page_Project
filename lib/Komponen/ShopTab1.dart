import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';

class ShopTab1 extends StatelessWidget {
  const ShopTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            fit: FlexFit.tight,
            child:reusableContainer(backgroundColor:AppColors.redConMenu,
              textColor: null,
              text: "GoMart",
              text1: null,
              image: Image.asset("images/mart.png", color:  AppColors.redImgMenu,),
            )
        ),
        Flexible(
            fit: FlexFit.tight,
            child:reusableContainer(backgroundColor: AppColors.blueConMenu,
              textColor: null,
              text: "Pulsa",
              text1: null,
              image: Image.asset("images/pulsa.png", color: AppColors.blueImgMenu,),
            )
        ),
        Flexible(
            fit: FlexFit.tight,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(4)),
                Image.asset("images/klub.png",
              ),
                const SizedBox(
                  height: 4,
                ),
                Text("GoClub", style: TextStyle(
                    color: AppColors.blackText,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato'),
                )
              ],
            ),
        ),

        Flexible(
            fit: FlexFit.tight,
            child:reusableContainer(backgroundColor: AppColors.blackMoreMenu,
              textColor: null,
              text: "More",
              text1: null,
              image: Image.asset("images/more.png", color:AppColors.blackText,),
            )
        )
      ],
    );
  }
}
