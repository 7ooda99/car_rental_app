import 'package:flutter/material.dart';

import 'package:car_rental_app/view/widgets/text_widget.dart';

import '../../../utils/constant.dart';

class CarWidget extends StatelessWidget {
  String carName;
  String carModel;
  double carPrice;
  String carImage;
  CarWidget({
    Key? key,
    required this.carName,
    required this.carModel,
    required this.carPrice,
    required this.carImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: kLGrayColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(carImage),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: '$carName', fontSize: 15, color: kDGrayColor),
              Row(
                children: [
                  TextWidget(text: '\$ ', fontSize: 15, color: kBlackColor),
                  TextWidget(text: '$carPrice', fontSize: 15, color: kBlackColor),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:15, vertical: 40 ),
          child: TextWidget(text: '$carModel', fontSize: 20, color: kBlackColor),
        ),
      ]),
    );
  }
}
