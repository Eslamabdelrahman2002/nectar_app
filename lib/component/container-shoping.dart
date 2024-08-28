import 'package:flutter/material.dart';

class ListTileGroceries extends StatelessWidget {
  const ListTileGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 248.19,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  color: Color(0xff8A44C),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Image.asset(
                    "asset/tttt.png",
                    height: 71.9,
                    width: 71.9,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Pulses",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: 10,
      ),
    );
  }
}
