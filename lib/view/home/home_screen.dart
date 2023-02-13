import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/auth/login_screen.dart';

import 'package:car_rental_app/view/home/home_body.dart';
import 'package:car_rental_app/view/home/personal_info/my_booking_screen.dart';
import 'package:car_rental_app/view/home/personal_info/notification_screen.dart';
import 'package:car_rental_app/view/home/profile_screen.dart';
import 'package:car_rental_app/view/home/search_screen.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'admin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  Widget homeScreen = HomeBody();
  Widget searchScreen = SearchScreen();
  Widget profileScreen = ProfileScreen();
  Widget adminScreen = AdminScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Icon(
                Icons.location_pin,
                color: kMainColor,
              ),
              SizedBox(width: 5),
              TextWidget(text: 'Mecca, 2421', fontSize: 16, color: kBlackColor)
            ],
          ),
        ),
        leadingWidth: 400,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => LoginScreen());
            },
            icon: Icon(
              Icons.login,
              color: kMainColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => NotificationScreen());
            },
            icon: Icon(
              Icons.notifications,
              color: kMainColor,
            ),
          ),
        ],
      ),
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: kMainColor,
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: kMainColor,
                color: kMainColor,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.amber,
              ),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                color: Colors.amber,
                Icons.admin_panel_settings,
              ),
              label: 'Admin',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.amber,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return homeScreen;
    } else if (selectedIndex == 1) {
      return searchScreen;
    } else if (selectedIndex == 2) {
      return adminScreen;
    } else {
      return profileScreen;
    }
  }
}
