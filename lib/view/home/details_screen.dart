import 'package:car_rental_app/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widgets/main_details_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: fa,
        iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/bmwcar2.png'),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: MainDetailsWidget(),
          )
        ],
      ),
    );
  }
}

