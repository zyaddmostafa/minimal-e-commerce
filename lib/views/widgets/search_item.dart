import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyles.stylesSemiBold20,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
        Divider(
          color: Color(0xffE0E0E0),
          thickness: 1,
        ),
      ],
    );
  }
}
