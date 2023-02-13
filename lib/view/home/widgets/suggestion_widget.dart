import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class SuggestionWidget extends StatelessWidget {
  String text;
  double width;
   SuggestionWidget({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          // border: Border.all(color: kMainColor, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: TextWidget(
            text: text,
            fontSize: 17,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}
