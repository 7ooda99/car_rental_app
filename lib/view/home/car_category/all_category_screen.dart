

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';
import '../details_screen.dart';
import '../widgets/car_widget.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          

          GestureDetector(
            onTap: () {
              Get.to(() => DetailsScreen());
            },
            child: CarWidget(
              carImage: 'assets/images/bmwcar2.png',
              carName: 'AUDI',
              carModel: 'Q7',
              carPrice: 14.99,
            ),
          ),
          CarWidget(
            carImage: 'assets/images/ocar1.png',
            carName: 'BMW The 5',
            carModel: 'X5',
            carPrice: 13.99,
          ),
        ],
      ),
    );

  }
}