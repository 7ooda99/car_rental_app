import 'package:car_rental_app/view/home/personal_info/widgets/booking_car_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: TextWidget(text: 'My Booking', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          BookCarWidget(
            image: 'assets/images/bmwcar2.png',
           carName: 'BMW The 5',
           id: 'C2218', 
           tripStart: '28june, Sat, 5:30pm',
           tripEnd: '30june, mon, 5:30pm',
           paid: 14.99,
          ),
          SizedBox(height: 15,),
          BookCarWidget(
            image: 'assets/images/ocar1.png',
           carName: 'Audi Q3',
           id: 'M2218', 
           tripStart: '3sep, wed, 7:00pm',
           tripEnd: '5sep, fri, 7:00pm',
           paid: 20.99,
          ),
        ],
      ),
    );
  }
}


