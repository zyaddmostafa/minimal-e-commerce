import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/checkout_price.dart';
import 'package:minimalecommerce/views/widgets/cart_item_list_view.dart';
import 'package:minimalecommerce/views/widgets/check_out_price_list.dart';

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
          ),
          Divider(
            thickness: 1,
          ),
          CheckOutPriceList(),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: MediaQuery.of(context).size.width *
                    0.356, // 20% of screen width
              ),
              backgroundColor: Color(0xff212429),
            ),
            onPressed: () {},
            child: Text(
              'CheckOut',
              style: AppStyles.stylesRegular14.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
