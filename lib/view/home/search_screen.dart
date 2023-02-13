import 'package:car_rental_app/utils/constant.dart';
import 'package:car_rental_app/view/home/widgets/custom_text_field.dart';
import 'package:car_rental_app/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/suggestion_widget.dart';

class SearchScreen extends StatefulWidget {

   SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String selectedCategory = '';

  List<String> categories = [
    'BMW',
    'AUDI',
    'KIA',
    'TOYOTA',
    'GMC',
    'FORD',
    'HYUNDAI',
    'HONDA',
    'CHEVROLET'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: CustomTextField(
                borderColor: kMainColor,
                inputType: TextInputType.text,
                maxLines: 1,
                width: double.infinity,
                suffexIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                hintLableText: 'البحث',
                textAlign: TextAlign.right,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextWidget(
                      text: 'Suggestions', fontSize: 23, color: kBlackColor),
                  SizedBox(
                    height: 50,
                  ),
                  Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: categories.map(
                    (category) {
                      return FilterChip(
                        padding: EdgeInsets.all(10),
                        autofocus: true,
                        elevation: 5,
                        // backgroundColor: kMainColor,
                        selectedColor: kMainColor,
                        label: Text(category),
                        selected: selectedCategory == category,
                        onSelected: (value) {
                          setState(
                            () {
                              selectedCategory = category;
                            },
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           SuggestionWidget(width: 100, text: 'BMW'),
            //           SizedBox(width: 10,),
            //           SuggestionWidget(width: 100, text: 'AUDI'),
            //           SizedBox(width: 10,),
            //           SuggestionWidget(width: 100, text: 'KIA'),
                      
            //         ],
            //       ),
            //       SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
                      
            //           SuggestionWidget(text: 'TOYOTA', width: 100) ,
            //           SizedBox(width: 10,),
            //           SuggestionWidget(text: 'GMC', width: 100) , 
            //           SizedBox(width: 10,),
            //           SuggestionWidget(text: 'FORD', width: 100) ,           
            //         ],
            //       ),
            //       SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           SizedBox(height: 10,),
            //           SuggestionWidget(text: 'HYUNDAI', width: 100) ,
            //           SizedBox(width: 10,),
            //           SuggestionWidget(text: 'HONDA', width: 100) , 
            //           SizedBox(width: 10,),
            //           SuggestionWidget(text: 'CHEVROLET', width: 120) ,           
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    ])));
  }
}
