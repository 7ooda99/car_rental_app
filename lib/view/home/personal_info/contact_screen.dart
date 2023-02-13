import 'package:car_rental_app/view/home/personal_info/widgets/help_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: TextWidget(text: 'Contact Us', fontSize: 20, color: kBlackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 40,),
          PhysicalModel(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            child: Icon(
              Icons.support_agent_outlined,
              color: kBlackColor,
              size: 120,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'How can we help you ?',
            style: TextStyle(
              color: kBlackColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          HelpWidget(
            icon: Icon (Icons.phone,),
            title: 'Phone number',
            subTitle: '(966) 554768939',
          ),
          SizedBox(height: 15,),
          HelpWidget(
            icon: Icon (Icons.email),
            title: 'Email',
            subTitle: 'AMCarrental@gmail.com',
          ),
        ],
      ),
    );
  }
}


