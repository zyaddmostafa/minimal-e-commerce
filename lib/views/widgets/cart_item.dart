import 'package:flutter/material.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/product_item_info.dart';
import 'package:minimalecommerce/views/widgets/tralling_cart_item.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProductItemInfo(
            productModel: productModel,
          ),
        ),
        TrallingCartItem()
      ],
    );
  }
}
