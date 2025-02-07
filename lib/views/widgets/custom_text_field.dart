import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF5F5F5),
        hintText: 'Search',
        hintStyle: AppStyles.stylesRegular16.copyWith(
          color: Color(0xff868D94),
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Color(0xff868D94),
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: Color(0xffF5F5F5),
    ),
  );
}
