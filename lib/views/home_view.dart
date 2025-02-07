import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/all_product_section.dart';
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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeViewHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 36,
            ),
          ),
          SliverToBoxAdapter(child: ProductPageViewSection()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverFillRemaining(
            child: AllProductSection(),
          ),
        ],
      ),
    );
  }
}
