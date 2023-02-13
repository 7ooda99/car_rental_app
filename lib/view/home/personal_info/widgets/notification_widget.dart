import 'package:flutter/material.dart';

import '../../../../utils/constant.dart';
import '../../../widgets/text_widget.dart';
import '../../widgets/list_tile_widget.dart';

class NotificationWidget extends StatelessWidget {
  String title;
  String subTitle;
  NotificationWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 100,
        width: double.infinity,
        // color: kBlackColor,
        child:ListTileWidget(
      subTitle: TextWidget(
          text:
              subTitle,
          fontSize: 15,
          color: kBlackColor),
      title:title,
      leadingIcon: Icon(Icons.notifications),
      // trailingIcon: Icon(Icons.area_chart),
    ) ,
      ),
    );
  }
}
