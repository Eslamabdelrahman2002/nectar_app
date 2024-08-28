import 'package:flutter/material.dart';
import 'package:nectar_app/component/List_Ttle_favourite.dart';

import '../component/Color.dart';
import '../component/button_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            // Wrap ListView in Expanded to avoid overflow
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTileFavourite();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 20);
              },
              itemCount: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          DefaultButton(
            text: "Add All To Cart",
            funtion: () {},
            color: AppColors.primary,
            border: 19,
            textColor: AppColors.third,
          ),
        ],
      ),
    );
  }
}
