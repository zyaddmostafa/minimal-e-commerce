import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class ProductRelevanceRow extends StatelessWidget {
  const ProductRelevanceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '13,134 products',
          style: AppStyles.stylesMediam12.copyWith(
            color: Color(0xff868D94),
          ),
        ),
        Row(
          children: [
            Text(
              'Sort by',
              style: AppStyles.stylesMediam12,
            ),
            Text(
              'Relevance',
              style: AppStyles.stylesBold12,
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        )
      ],
    );
  }
}
