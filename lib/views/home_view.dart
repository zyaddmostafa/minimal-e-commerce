import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/home_view_header.dart';
import 'package:minimalecommerce/views/widgets/product_item_grid_view.dart';
import 'package:minimalecommerce/views/widgets/product_page_view_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeViewHeader(),
          SizedBox(
            height: 36,
          ),
          ProductPageViewSection(),
          SizedBox(
            height: 32,
          ),
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
      ),
    );
  }
}
