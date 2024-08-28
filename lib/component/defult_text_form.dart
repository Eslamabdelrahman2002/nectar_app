import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text("Search Store"),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: AppColors.second, // Change the border color
                width: 2.0,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color:
                    AppColors.primary, // Change the border color when enabled
                width: 2.0,
              )),
          filled: true, // Enables background color
          fillColor: AppColors.fifth,
        ),
      ),
    );
  }
}
