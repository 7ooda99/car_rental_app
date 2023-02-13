import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/personal_info/contact_screen.dart';
import 'package:car_rental_app/view/home/personal_info/my_booking_screen.dart';
import 'package:car_rental_app/view/home/personal_info/notification_screen.dart';
import 'package:car_rental_app/view/home/personal_info/personal_screen.dart';
import 'package:car_rental_app/view/home/personal_info/terms_screen.dart';
import 'package:car_rental_app/view/home/widgets/list_tile_widget.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: kBlackColor,
            radius: 50,
            child: ClipOval(
              child: Image.asset(
                'assets/images/hooda.jpg',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextWidget(
            text: '   Mahmood Alkayyal', fontSize: 15, color: kSecondryColor,),
        TextWidget(
            text: '   +966560986640', fontSize: 13, color: kSecondryColor,),
        SizedBox(
          height: 20,
        ),
        ListTileWidget(
           onTap: (){
            Get.to(()=>PersonalScreen());
           },
          title: 'Profile',
          subTitle: TextWidget(
              text: 'personal information', fontSize: 13, color: kDGrayColor),
          leadingIcon: Icon(Icons.person),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        ListTileWidget(
          onTap: (){
            Get.to(()=> MyBookingScreen());
          },
          title: 'My Booking',
          subTitle: TextWidget(
              text: 'reservations', fontSize: 13, color: kDGrayColor),
          leadingIcon: Icon(Icons.book_online_outlined),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        ListTileWidget(
          onTap: (){
            Get.to(()=>NotificationScreen());
          },
          title: 'Notification',
          leadingIcon: Icon(Icons.notifications),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        ListTileWidget(
          onTap: (){
            Get.to(()=> TermsScreen());
          },
          title: 'Terms and Conditions',
          leadingIcon: Icon(Icons.book),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        ListTileWidget(
          onTap: (){
            Get.to(()=>ContactScreen());
          },
          title: 'Contact us',
          leadingIcon: Icon(Icons.contact_support),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
