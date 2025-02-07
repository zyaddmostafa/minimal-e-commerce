import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/product_item.dart';

class ProductItemGridview extends StatelessWidget {
  const ProductItemGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> item = [
      ProductModel(
          name: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesHeadphoneB),
      ProductModel(
          name: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesHeadphoneW),
      ProductModel(
          name: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesAirpodsB),
      ProductModel(
          name: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesAirpodsW),
    ];
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 16,
        childAspectRatio: 0.6,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => ProductItem(
        productModel: item[index],
      ),
    );
  }
}
