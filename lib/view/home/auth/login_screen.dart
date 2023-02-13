import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/auth/signup_screen.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    text: 'Sign in', fontSize: 20, color: kBlackColor)),
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
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                TextWidget(
                    text: 'don\'t have an account ?   ',
                    fontSize: 15,
                    color: kBlackColor),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> SignUpScreen());
                  },
                    child: TextWidget(
                        text: 'sign up', fontSize: 15, color: kBlackColor)),
              ],
            ),
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                  text: 'login',
                  color: kMainColor,
                  textSize: 17,
                  textColor: kBlackColor,
                  width: double.infinity,
                  radius: 15),
            ),
          ],
        ),
      ),
    );
  }
}
