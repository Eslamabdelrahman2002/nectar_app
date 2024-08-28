import 'package:flutter/material.dart';
import 'package:nectar_app/component/color.dart';
import '../component/card.dart';
import '../component/carousel.dart';
import '../component/container-shoping.dart';
import '../component/defult_text_form.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            "asset/carrot_color.png",
            height: 32,
            width: 32,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on),
                    const SizedBox(width: 5),
                    const Text(
                      "Dhaka, Banassre",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const DefaultTextFormField(),
              const SizedBox(height: 15),
              Carousel(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: AppColors.primary),
                  ),
                ],
              ),
              SizedBox(
                height: 248.51,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DefaultCard(
                      image: "asset/banana.png",
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: 10,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: AppColors.primary),
                  ),
                ],
              ),
              SizedBox(
                height: 248.51,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DefaultCard(
                      image: "asset/meet.png",
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: 10,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Groceries",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: AppColors.primary),
                  ),
                ],
              ),
              const ListTileGroceries(),
            ],
          ),
        ),
      ),
    );
  }
}
