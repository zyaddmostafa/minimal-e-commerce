import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/product_model.dart';

class ProductItemInfo extends StatelessWidget {
  const ProductItemInfo({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Image.asset(
            productModel.image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.price,
                style: AppStyles.stylesExtraBold14,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                softWrap: true,
                maxLines: 2,
                productModel.title,
                style: AppStyles.stylesMediam14,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                productModel.model,
                style: AppStyles.stylesRegular10
                    .copyWith(color: Color(0xff868D94)),
              )
            ],
          ),
        )
      ],
    );
  }
}
