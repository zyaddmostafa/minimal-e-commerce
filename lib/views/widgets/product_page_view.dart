import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/product_page_view_item.dart';

class ProductPageView extends StatelessWidget {
  const ProductPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ProductPageViewItem(),
        ),
      ),
    );
  }
}
