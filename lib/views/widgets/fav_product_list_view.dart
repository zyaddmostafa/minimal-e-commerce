import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/fav_product_item.dart';

class FavProductListView extends StatelessWidget {
  const FavProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> item = [
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesHeadphoneB),
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesMic2),
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesXiaomiWatch),
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesGoogleHome),
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesSonyCamera),
      ProductModel(
          title: 'SONY Premium Wireless Headphones',
          price: r'$349.99',
          model: 'Model: WH-1000XM4, Black',
          image: Assets.imagesAirpodsW),
    ];
    return ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: FavProductItem(
                productModel: item[index],
              ),
            ));
  }
}
