import 'package:car_rental_app/view/home/car_category/all_category_screen.dart';
import 'package:car_rental_app/view/home/details_screen.dart';
import 'package:car_rental_app/view/home/widgets/car_widget.dart';
import 'package:car_rental_app/view/home/widgets/offer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant.dart';
import '../widgets/text_widget.dart';
import 'widgets/categories_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String selectedCategory = 'All';

  List<String> categories = [
    'All',
    'Hatchback',
    'SUV',
    'Sedan',
    'Crossover',
  ];

  Widget homeScreen = AllCategoryScreen();
  // Widget searchScreen = SearchScreen();
  // Widget profileScreen = ProfileScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        OfferWidget(),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Wrap(
              
              spacing: 5,
              runSpacing: 30,
              children: categories.map(
                (category) {
                  return FilterChip(
                    padding: EdgeInsets.all(10),
                    showCheckmark: false,
                    elevation: 2,
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
          ),
        ),
        SizedBox(height: 15),
                  Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextWidget(
                text: 'Available Car', fontSize: 20, color: kBlackColor),
          ),
                    SizedBox(height: 15),
        Expanded(
          child: getChipContent(selectedCategory),
        ),

        // CategoriesWidget(
        //     text: 'All',
        //     width: 50,
        //    index: true,
        //     onTap: () {
        //       setState(() {
        //         selectedIndex = 0;
        //       });
        //     }),
        // CategoriesWidget(
        //     text: 'Hatchback',
        //     width: 100,
        //     // index: false,
        //     onTap: () {
        //       setState(() {
        //         selectedIndex = 1;
        //       });
        //     }),
        // CategoriesWidget(
        //     text: 'SUV',
        //     width: 50,
        //     onTap: () {
        //       setState(() {
        //         selectedIndex = 2;
        //       });
        //     }),
        // CategoriesWidget(
        //     text: 'Sedan',
        //     width: 60,
        //     onTap: () {
        //       setState(() {
        //         selectedIndex = 3;
        //       });
        //     }),
        // CategoriesWidget(
        //     text: 'Crossover',
        //     width: 90,
        //     onTap: () {
        //       setState(() {
        //         selectedIndex = 4;
        //       });
        //     }),

        // SizedBox(height: 15),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: TextWidget(
        //       text: 'Available Car', fontSize: 20, color: kBlackColor),
        // ),
        // SizedBox(height: 15),
        // GestureDetector(
        //   onTap: () {
        //     Get.to(() => DetailsScreen());
        //   },
        //   child: CarWidget(
        //     carImage: 'assets/images/bmwcar2.png',
        //     carName: 'AUDI',
        //     carModel: 'Q7',
        //     carPrice: 14.99,
        //   ),
        // ),
        // CarWidget(
        //   carImage: 'assets/images/ocar1.png',
        //   carName: 'BMW The 5',
        //   carModel: 'X5',
        //   carPrice: 13.99,
        // )
      ],
    );
  }

  Widget getChipContent(String category) {
    if (category == 'All') {
      return homeScreen;
    } else if (category == 'Fruits') {
      return Text("All items");
    } else if (category == 'Vegetables') {
      return Text("All items");
    } else {
      return Text(category);
    }
  }
}
