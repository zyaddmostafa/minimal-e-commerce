import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/product_item_grid_view.dart';

class AllProductSection extends StatelessWidget {
  const AllProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended for you',
          style: AppStyles.stylesSemiBold20,
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ProductItemGridview(),
        ),
      ],
    );
  }
}
