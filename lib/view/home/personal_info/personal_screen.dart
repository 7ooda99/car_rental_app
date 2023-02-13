import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/widgets/custom_button.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title:
            TextWidget(text: 'Information', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: kBlackColor,
                    radius: 50,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/hooda.jpg',
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 60,
                    color: kMainColor,
                    child: Center(
                        child: TextWidget(
                            text: 'Change', fontSize: 10, color: kBlackColor)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextWidget(
                  text: 'Personal Data', fontSize: 20, color: kBlackColor),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Full name',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Phone number',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Adress',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'National identiy number',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 1,
              textAlign: TextAlign.start,
              borderColor: kBlackColor,
              lableText: 'Licence number',
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: CustomButton(
                  text: 'Save',
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
