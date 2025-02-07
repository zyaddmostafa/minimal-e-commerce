import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/product_item_info.dart';

class FavProductItem extends StatelessWidget {
  const FavProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ProductItemInfo(productModel: productModel)),
        SizedBox(
          width: 16,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xffF5F5F5), borderRadius: BorderRadius.circular(8)),
          child: Image.asset(
            Assets.imagesCartt,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(Assets.imagesPoints)
      ],
    );
  }
}
