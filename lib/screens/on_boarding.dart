import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  List<String> onBoardingImages = [
    'assets/OnBoarding/find_food.png',
    'assets/OnBoarding/delivery.png',
    'assets/OnBoarding/live_tracking.png',
  ];

  List<String> onBoardingTitles = [
    'Find Food You Love',
    'Fast Delivery',
    'Live Tracking',
  ];

  List<String> onBoardingDescriptions = [
    'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
    'Fast food delivery to your home, office wherever you are',
    'Real time tracking of your food on the app once you placed the order',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingImages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    onBoardingImages[index],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: ListView.builder(
                      itemCount: onBoardingImages.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.orange,
                            height: 2,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    onBoardingTitles[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    onBoardingDescriptions[index],
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  ButtonWithText(
                    buttonText: 'Next',
                    buttonOnPressed: () {},
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
