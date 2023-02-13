import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreen> with SingleTickerProviderStateMixin {
    AnimationController? animationController;
  Animation<double>? fadingAnimation; 
   @override
  void initState() {

    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 900)) ;

    fadingAnimation = 
    Tween<double> (begin: .1, end: 1.2).animate(animationController!);
    
    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kMainColor,
      body: FadeTransition(
        opacity: fadingAnimation!,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  // end: alignmentBottom.evaluate(backgroundAnimation),
                  colors: [
                    kMainColor,
                    // kMainColor,
                    kSecondryColor,
                    kDGrayColor,
                    kBlackColor,
                  ],
                ),
              ),
            ),
            Center(child: Image.asset('assets/images/cerato.png')),
            Positioned(
              bottom: 250,
              left: 100,
              child: Row(
                children: [
                  TextWidget(text: 'AM', fontSize: 35, color: kMainColor),
                  TextWidget(
                    text: 'CarRental',
                    fontSize: 35,
                    color: kWhiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void goToNextView() 
  {
    Future.delayed(Duration(milliseconds:3500),()
    {
      Get.to(()=>HomeScreen(), transition: Transition.fade);
    });
  }
}
