import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          'Favourites',
          style: AppStyles.stylesBold14,
        ),
      ],
    );
  }
}
