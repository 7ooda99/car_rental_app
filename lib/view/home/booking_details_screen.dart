import 'package:car_rental_app/view/home/payment_screen.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/home/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant.dart';
import '../widgets/text_widget.dart';

class BookingDetailsScreen extends StatefulWidget {
  BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  bool isSwiched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: TextWidget(
            text: 'Booking Information', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Pick Up location',
              suffexIcon: Icon(Icons.location_on),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Pick Up Date & Time',
              suffexIcon: Icon(Icons.calendar_month),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Return Date & Time',
              suffexIcon: Icon(Icons.calendar_month),
            ),
            SizedBox(
              height: 20,
            ),
            // ListTileWidget( title: 'With driver', leadingIcon: Text('')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 8,
                child: Container(
                  height: 60,
                  width: double.infinity,
                  // color: kBlackColor,
                  // decoration: BoxDecoration(

                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextWidget(
                            text: 'With delivery ?',
                            fontSize: 15,
                            color: kBlackColor),
                      ),
                      Switch(
                        activeColor: kMainColor,
                          value: isSwiched,
                          onChanged: (value) {
                            setState(() {
                              isSwiched = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 220),
            Center(
              child: CustomButton(
                  onTap: () {
                    Get.to(() => PaymentScreen());
                  },
                  text: 'Next',
                  color: kMainColor,
                  textSize: 20,
                  textColor: kBlackColor,
                  width: 190,
                  radius: 15),
            ),
          ],
        ),
      ),
    );
  }
}
