import 'package:car_rental_app/view/home/personal_info/widgets/notification_widget.dart';
import 'package:car_rental_app/view/home/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title:
            TextWidget(text: 'Notification', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          NotificationWidget(title: '40% off today! ', subTitle: 'Hurry up! don\'t sit at home today best car rental deal'),
          NotificationWidget(title: '40% off today! ', subTitle: 'Hurry up! don\'t sit at home today best car rental deal'),

          NotificationWidget(title: '40% off today! ', subTitle: 'Hurry up! don\'t sit at home today best car rental deal'),
        ],
      ),
    );
  }
}

