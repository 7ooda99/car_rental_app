import 'package:car_rental_app/view/home/details_screen.dart';
import 'package:car_rental_app/view/home/profile_screen.dart';
import 'package:car_rental_app/view/home/search_screen.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

// ignore: must_be_immutable
class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String selectedCategory = 'All';

  List<String> categories = [
    'All',
    'Hatchback',
    'SUV',
    'Sedan',
    'Crossover',
  ];

  Widget homeScreen = HomeBody();
  Widget searchScreen = SearchScreen();
  Widget profileScreen = ProfileScreen();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              
              Expanded(child: getChipContent(selectedCategory))
            ],
          ),
        ),
      ),
    );
  }

  Widget getChipContent(String category) {
    if (category == 'All') {
      return homeScreen;
    } else if (category == 'Fruits') {
      return Text("All items");
    } else if (category == 'Vegetables') {
      return Text("All items");
    } else {
      return Text(category);
    }
  }
}
