import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class PaymentWayWidget extends StatelessWidget {
  String? image;
   PaymentWayWidget({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Container(
          height: 110,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image!),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                )
              ],
            ),
          ),
          // color: kBlackColor,
        ),
      ),
    );
  }
}
