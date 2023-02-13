import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constant.dart';
import '../../../widgets/text_widget.dart';

class BookCarWidget extends StatelessWidget {
  String carName;
  String id;
  String tripStart;
  String tripEnd;
  double paid;
  String image;
  BookCarWidget({
    Key? key,
    required this.carName,
    required this.id,
    required this.tripStart,
    required this.tripEnd,
    required this.paid,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: (){
        Get.dialog(
          AlertDialog(
            title: TextWidget(
                    text: 'delete reservation',
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                  content: TextWidget(
                    text: 'Are you sure you want to delete this reservation from history ?',
                    fontSize: 12,
                    color: kBlackColor,
                  ),
                  actions: [
                    TextButton(onPressed: () {
                      Get.back();
                    }, child: Text('No')),
                    TextButton(onPressed: () {}, child: Text('Yes')),
                  ],
          )
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(alignment: Alignment.topRight, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kLGrayColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                  // changes position of shadow
                ),
              ],
            ),
            height: 180,
            width: double.infinity,
            // color: kBlackColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        image,
                        width: 150,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          TextWidget(
                              text: carName, fontSize: 18, color: kBlackColor),
                          Row(
                            children: [
                              TextWidget(
                                  text: 'Booking id : ',
                                  fontSize: 15,
                                  color: kDGrayColor),
                              TextWidget(
                                  text: id, fontSize: 15, color: kDGrayColor),
                            ],
                          ),
                        ],
                      ),
                      // TextWidget(text: 'BMW The 5', fontSize: 15, color: kDGrayColor),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TextWidget(
                              text: 'Trip start',
                              fontSize: 18,
                              color: kDGrayColor),
                          TextWidget(
                              text: tripStart, fontSize: 15, color: kBlackColor),
                        ],
                      ),
                      Column(
                        children: [
                          TextWidget(
                              text: 'Trip end', fontSize: 18, color: kDGrayColor),
                          TextWidget(
                              text: tripEnd, fontSize: 15, color: kBlackColor),
                        ],
                      ),
                      Column(
                        children: [
                          TextWidget(
                              text: 'Paid', fontSize: 18, color: kDGrayColor),
                          TextWidget(
                              text: '$paid \$', fontSize: 15, color: kBlackColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Icon(
    
          //    (Icons.remove_circle),
          //   // iconSize: 100,
          // ),
          // SizedBox(width: 20,),
          IconButton(
            onPressed: () {
              Get.dialog(
                AlertDialog(
                  title: TextWidget(
                    text: 'Cancel reservation',
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                  content: TextWidget(
                    text: 'Are you sure you don\'t passed 2 hours from the time you reserved? ',
                    fontSize: 12,
                    color: kBlackColor,
                  ),
                  actions: [
                    TextButton(onPressed: () {
                      Get.back();
                    }, child: Text('No')),
                    TextButton(onPressed: () {}, child: Text('Yes')),
                  ],
                ),
              );
            },
            icon: Icon(Icons.remove_circle),
            // iconSize: 50,
          ),
        ]),
      ),
    );
  }
}
