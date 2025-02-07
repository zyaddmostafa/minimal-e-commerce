import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/checkout_price.dart';
import 'package:minimalecommerce/views/widgets/cart_item_list_view.dart';
import 'package:minimalecommerce/views/widgets/check_out_price_list.dart';
import 'package:minimalecommerce/views/widgets/custom_botton.dart';

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
          CustomBotton(),
          SizedBox(
            height: 8,
          ),
          PaymentWaysItemList(),
        ],
      ),
    );
  }
}

class PaymentWaysItem extends StatelessWidget {
  const PaymentWaysItem({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffEFEEEc)),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class PaymentWaysItemList extends StatelessWidget {
  const PaymentWaysItemList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> item = [
      Assets.imagesPaypal,
      Assets.imagesVisa,
      Assets.imagesMaster,
      Assets.imagesAmex,
      Assets.imagesApay,
      Assets.imagesGpay,
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        item.length,
        (index) => PaymentWaysItem(
          image: item[index],
        ),
      ),
    );
  }
}
