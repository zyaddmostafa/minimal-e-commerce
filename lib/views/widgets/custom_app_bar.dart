import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back_ios_new_outlined, size: 18),
        Text(
          'Headphones',
          style: AppStyles.stylesBold14.copyWith(fontSize: 14),
        ),
        Icon(Icons.search, size: 18),
      ],
    );
  }
}
