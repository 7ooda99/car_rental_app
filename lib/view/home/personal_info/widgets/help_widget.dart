import 'package:flutter/material.dart';

import '../../../../utils/constant.dart';
import '../../../widgets/text_widget.dart';

class HelpWidget extends StatelessWidget {
  String title;
  String subTitle;
  Icon icon;
   HelpWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: kWhiteColor,
          elevation: 8,
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
          //     boxShadow: [
          //     BoxShadow(
          // color: Colors.black.withOpacity(0.1),
          // spreadRadius: 1,
          // blurRadius: 3,
          // offset: Offset(1, 2), // changes position of shadow
          //     ),
          //   ],
                // color: kLGrayColor,
                // border: Border.all(),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              // mainAxisAlignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Material(
                     elevation: 8,
                     borderRadius: BorderRadius.circular(200),
                    child: Container(
                      // padding: EdgeInsets.all(value),
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(width: 1),
                      ),
                      child: icon,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: title,
                      fontSize: 15,
                      color: kBlackColor,
                    ),
                    TextWidget(
                      text: subTitle,
                      fontSize: 13,
                      color: kLBlackColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
