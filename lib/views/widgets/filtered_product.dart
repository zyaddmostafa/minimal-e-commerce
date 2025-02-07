import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/custom_app_bar.dart';
import 'package:minimalecommerce/views/widgets/product_filter_list.dart';
import 'package:minimalecommerce/views/widgets/product_item_grid_view.dart';
import 'package:minimalecommerce/views/widgets/product_relevance_row.dart';

class FilteredProduct extends StatelessWidget {
  const FilteredProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomAppBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SliverToBoxAdapter(
                child: ProductFilterList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 21,
                ),
              ),
              SliverToBoxAdapter(
                child: ProductRelevanceRow(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 8,
                ),
              ),
              SliverFillRemaining(
                child: ProductItemGridview(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
