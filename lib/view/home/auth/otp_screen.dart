import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/home_screen.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: TextWidget(
                text: 'Verify your email',
                fontSize: 35,
                color: kBlackColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextWidget(
                text: 'Confirm your 4-digit PIN',
                fontSize: 17,
                color: kBlackColor,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(width: 60,inputType: TextInputType.number,),
                CustomTextField(width: 60,inputType: TextInputType.number,),
                CustomTextField(width: 60,inputType: TextInputType.number,),
                CustomTextField(width: 60,inputType: TextInputType.number,),
              ],
            ),
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                onTap: (){
                  Get.to(()=> HomeScreen());
                },
                text: 'verify now',
                color: kMainColor,
                textSize: 20,
                textColor: kBlackColor,
                width: double.infinity,
                radius: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
