import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 173.32,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              height: 79.43,
              width: 99.89,
            ),
            Text(
              "Organic Bananas",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              "7pcs, Priceg",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: AppColors.second,
              ),
              textAlign: TextAlign.start,
            ),
            Row(
              children: [
                Text("\$4.99",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Spacer(),
                Container(
                  height: 45.67,
                  width: 45.67,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(17)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.third,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
