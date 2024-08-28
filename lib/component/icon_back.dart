import 'package:flutter/material.dart';

class IconBack extends StatelessWidget {
  const IconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
