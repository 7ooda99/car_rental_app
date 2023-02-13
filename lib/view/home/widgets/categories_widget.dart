import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({
     this.index = false,
    required this.width,
    required this.text,
    Key? key, required this.onTap,
  }) : super(key: key);
  String text;
  double width;
  bool index ;
  final VoidCallback onTap;
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: width,
          decoration: BoxDecoration(
              color: index ? kMainColor : kWhiteColor,
              border: Border.all(),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: TextWidget(text: text, fontSize: 15, color: kBlackColor),
          ),
        ),
      ),
    );
  }
}
