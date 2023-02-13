import 'package:car_rental_app/models/features_model.dart';
import 'package:car_rental_app/view/home/booking_details_screen.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constant.dart';
import 'details_widget.dart';

class MainDetailsWidget extends StatelessWidget {
  const MainDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextWidget(
                        text: 'BMW   ', fontSize: 20, color: kWhiteColor),
                    TextWidget(text: 'X5', fontSize: 20, color: kWhiteColor),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: kSecondryColor,
                    ),
                    TextWidget(text: ' 4.8', fontSize: 20, color: kWhiteColor),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                TextWidget(text: '\$', fontSize: 20, color: kWhiteColor),
                TextWidget(
                    text: '24.99 per day', fontSize: 20, color: kWhiteColor),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child:
                TextWidget(text: 'Features', fontSize: 17, color: kWhiteColor),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ListView.builder(
              //   itemBuilder: (context, index) {
              //     return DetailsWidget();
              //   },
              //   itemCount: features.length,
              // )
              // GridView.builder(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     // childAspectRatio: 0.75,
              //     // // mainAxisExtent:220,
              //     // crossAxisSpacing: 15,
              //     // mainAxisSpacing: 5
              //     ),
              //     itemCount: features.length,
              //     itemBuilder: (context , index){
              //       return DetailsWidget();
              //     }
              //       )
              // DetailsWidget(
              //   icon: 'assets/icons/speed_icon.png',
              //   title: 'TOP SPEED',
              //   descreption: '200  ',
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsWidget(
                    icon: 'assets/icons/speed_icon.png',
                    title: 'TOP SPEED',
                    descreption: '220',
                  ),
                  DetailsWidget(
                    icon: 'assets/icons/wifi_icon.png',
                    title: 'WIFI',
                    descreption: 'Available',
                  ),
                  DetailsWidget(
                    icon: 'assets/icons/seats_icon.png',
                    title: 'SEATS',
                    descreption: '4',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsWidget(
                    icon: 'assets/icons/sensors_icon.png',
                    title: 'SENSOR',
                    descreption: 'Available',
                  ),
                  DetailsWidget(
                    icon: 'assets/icons/bluetooth_icon.png',
                    title: 'BLUETOOTH',
                    descreption: '4.0',
                  ),
                  DetailsWidget(
                    icon: 'assets/icons/doors_icon.png',
                    title: 'DOORS',
                    descreption: '4',
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: '\$ 24.99', fontSize: 20, color: kWhiteColor),
                    CustomButton(
                      onTap: (){
                        Get.to(()=>BookingDetailsScreen());
                      },
                      text: 'Book now',
                      color: kMainColor,
                      textSize: 20,
                      width: 150,
                      radius: 15,
                      textColor: kWhiteColor,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ]);
  }
}

// final List<String> features = [
//   icon = ''
// ];
