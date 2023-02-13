import 'package:car_rental_app/models/features_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class DetailsWidget extends StatelessWidget {
   DetailsWidget({
    this.features,
    required this.icon,
    required this.title,
    required this.descreption,
    Key? key,
  }) : super(key: key);
  final Features? features;
  String icon ;
  String title ;
  var descreption; 

  @override
  Widget build(BuildContext context) {
    return Container(
    height:100 ,
    width: 100,
    color: kLBlackColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(icon), 
        TextWidget(text:title , fontSize: 15, color: kLGrayColor),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text:descreption , fontSize: 15, color: kWhiteColor),
            // TextWidget(text: '', fontSize: 15, color: kWhiteColor),
          ],
        )
      ],
    ),
            );
  }
}
