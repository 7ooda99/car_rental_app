import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'assets/images/offer.jpg',
          fit: BoxFit.cover,
        ),
        // child: VideoPlayerController.asset(''),
      ),
      decoration: BoxDecoration(
          color: kBlackColor, borderRadius: BorderRadius.circular(20)),
    );
  }
}