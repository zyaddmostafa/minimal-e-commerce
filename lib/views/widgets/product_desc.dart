import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/models/product_model.dart';
import 'package:minimalecommerce/views/widgets/custom_app_bar.dart';
import 'package:minimalecommerce/views/widgets/product_item.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({super.key});

  @override
  Widget build(BuildContext context) {
    // final productModel =
    //     ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 32,
        ),
        Image.asset(Assets.imagesAirpodsB, height: 200),
      ],
    );
  }
}
