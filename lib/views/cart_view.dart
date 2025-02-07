import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/cart_item.dart';
import 'package:minimalecommerce/views/widgets/cart_item_list_view.dart';
import 'package:minimalecommerce/views/widgets/product_item_info.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Cart',
              style: AppStyles.stylesBold14,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Expanded(
            child: CartItemListView(),
          )
        ],
      ),
    );
  }
}
