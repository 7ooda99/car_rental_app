import 'package:car_rental_app/view/home/auth/login_screen.dart';
import 'package:car_rental_app/view/home/details_screen.dart';
import 'package:car_rental_app/view/home/home_screen.dart';
import 'package:car_rental_app/view/home/payment_screen.dart';
import 'package:car_rental_app/view/home/search_screen.dart';
import 'package:car_rental_app/view/home/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/splash/splash_screen.dart';

void main() {
  runApp( CarRentalApp());
}

class CarRentalApp extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   CarRentalApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );
  }
}

