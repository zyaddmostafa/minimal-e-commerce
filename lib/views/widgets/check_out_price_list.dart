import 'package:flutter/material.dart';
import 'package:minimalecommerce/models/checkout_price.dart';
import 'package:minimalecommerce/views/widgets/check_out_prices.dart';

class CheckOutPriceList extends StatelessWidget {
  const CheckOutPriceList({super.key});

  @override
  Widget build(BuildContext context) {
    List<CheckoutPriceModel> item = [
      CheckoutPriceModel(title: 'Subtotal', price: r'$0.00'),
      CheckoutPriceModel(title: "Total 'TVA included'", price: r'$695.07'),
    ];
    return Column(
      children: List.generate(
          item.length,
          (index) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: CheckOutPrice(
                  checkoutPriceModel: item[index],
                ),
              )),
    );
  }
}
