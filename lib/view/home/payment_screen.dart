

import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/payment_way_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant.dart';
import '../widgets/text_widget.dart';
import 'home_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: TextWidget(text: 'Payment', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          PaymentWayWidget(image: 'assets/images/mastercard.png',),
          SizedBox(height: 15,),
          PaymentWayWidget(image: 'assets/images/visa.png',),
          SizedBox(height: 15,),
          PaymentWayWidget(image: 'assets/images/paypal.png',),
          SizedBox(height: 200,),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                onTap: (){
                  // Get.to(()=> HomeScreen());
                  Get.dialog(AlertDialog(
                    title: TextWidget(text: 'Successfully Done', fontSize: 20, color: kBlackColor,),
                    actions: [
                      TextButton(onPressed: (){
                        Get.to(()=> HomeScreen());
                      }, child: Text('done'))
                    ],
                  ));
                },
                text: 'Pay now',
                color: kMainColor,
                textSize: 20,
                textColor: kBlackColor,
                width: double.infinity,
                radius: 15,
              ),
            )
        ],
      ),
    );
  }
}

