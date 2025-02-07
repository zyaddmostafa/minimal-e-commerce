import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/product_item.dart';

class ProductItemGridview extends StatelessWidget {
  const ProductItemGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 16,
        childAspectRatio: 0.6,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => ProductItem(),
    );
  }
}
