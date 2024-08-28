import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';
import 'package:nectar_app/component/button_widget.dart';
import 'package:nectar_app/screens/connect_with_social_media_Screen.dart';

import '../component/NavParView.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  void navigateToSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavBar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/home_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Image(
              image: AssetImage("asset/carrot.png"),
              height: 48.47,
              width: 56.63,
            ),
            const SizedBox(
              height: 20,
            ), // Add spacing between the image and text
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                      color: AppColors.third,
                    ),
                  ),
                  Text(
                    "to our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                      color: AppColors.third,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Get your groceries in as fast as one hour",
              style: TextStyle(color: AppColors.second, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            DefaultButton(
              text: "Get Started",
              funtion: () {
                navigateToSecondScreen(context); // Call the navigation function
              },
              color: AppColors.primary,
              border: 19,
              textColor: AppColors.third,
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
