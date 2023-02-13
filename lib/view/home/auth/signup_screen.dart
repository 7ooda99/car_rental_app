import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/auth/otp_screen.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset('assets/images/cerato.png'),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(text: 'AM', fontSize: 35, color: kMainColor),
                  TextWidget(
                    text: 'CarRental',
                    fontSize: 35,
                    color: kBlackColor,
                  ),
                ],
              ),
              SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: TextWidget(
                    text: 'Sign up', fontSize: 20, color: kBlackColor)),
            SizedBox(
              height: 5,
            ),
            CustomTextField(
              hintLableText: 'email',
              maxLines: 1,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintLableText: 'password',
              maxLines: 1,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintLableText: 'confirm password',
              maxLines: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                TextWidget(
                    text: 'already have an account ? ',
                    fontSize: 15,
                    color: kBlackColor),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                    child: TextWidget(
                        text: 'sign in', fontSize: 15, color: kBlackColor)),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                onTap: (){
                  Get.to(()=> OtpScreen());
                },
                text: 'register',
                color: kMainColor,
                textSize: 17,
                textColor: kBlackColor,
                width: double.infinity,
                radius: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
