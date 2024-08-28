import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';
import 'package:nectar_app/component/button_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .end, // Adjusted to center the content vertically
            children: [
              Image(
                image: AssetImage("asset/acount.png"),
                height: 158.15,
                width: 158.15,
              ),
              SizedBox(height: 40), // Added space between image and text
              Text(
                "Your Order has been \naccepted",
                textAlign: TextAlign.center, // Center-align the text
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                "Your items has been placcd and is on \n it’s way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.second),
              ),
              SizedBox(
                height: 100,
              ),
              DefaultButton(
                text: "Track Order",
                funtion: () {},
                color: AppColors.primary,
                border: 19,
                textColor: AppColors.third,
              ),
              SizedBox(height: 15), // Added space between buttons
              DefaultButton(
                text: "Back to home",
                funtion: () {
                  Navigator.pop(context);
                },
                color: AppColors.fifth,
                border: 0,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
