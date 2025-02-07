import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/checkout_price.dart';

class CheckOutPrice extends StatelessWidget {
  const CheckOutPrice({
    super.key,
    required this.checkoutPriceModel,
  });
  final CheckoutPriceModel checkoutPriceModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          checkoutPriceModel.title,
          style: AppStyles.stylesMediam12,
        ),
        Text(checkoutPriceModel.price, style: AppStyles.stylesMediam12),
      ],
    );
  }
}
