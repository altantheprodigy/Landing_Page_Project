import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';


class ShopTab extends StatelessWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 4.0;

    return Column(
      children: [
    Row(
    children: [
    Flexible(
    fit: FlexFit.tight,
        child:reusableContainer(backgroundColor:AppColors.greenConMenu,
          textColor: null,
          text: "GoRide",
          text1: null,
          image: Image.asset("images/motor.png", color: AppColors.greenImgMenu),
        )
    ),

    Flexible(
    fit: FlexFit.tight,
    child:reusableContainer(backgroundColor: AppColors.greenConMenu,
    textColor: null,
    text: "GoCar",
    text1: null,
    image: Image.asset("images/car.png", color:AppColors.greenImgMenu,),
    )
    ),

    Flexible(
    fit: FlexFit.tight,
    child:reusableContainer(backgroundColor: AppColors.redConMenu,
    textColor: null,
    text: "Food",
    text1: null,
    image: Image.asset("images/food.png", color: AppColors.redImgMenu,),
    )
    ),

    Flexible(
    fit: FlexFit.tight,
    child:reusableContainer(backgroundColor: AppColors.greenConMenu,
    textColor: null,
    text: "Send",
    text1: null,
    image: Image.asset("images/send.png", color: AppColors.greenImgMenu,),
    )
    )
    ],
    ),
    Row(
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
    Padding(padding: EdgeInsets.all(size.width * (padSize  / size.width))),
    Image.asset("images/klub.png",
    ),
      SizedBox(
    height: size.width * (padSize  / size.width),
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
    )
      ],
    );
  }
}
