import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Image.asset(productModel.image)),
        SizedBox(
          height: 8,
        ),
        Text(
          productModel.price,
          style: AppStyles.stylesExtraBold14,
        ),
        Text(
          softWrap: true,
          productModel.name,
          style: AppStyles.stylesMediam14.copyWith(fontSize: 14.sp),
        ),
        Text(
          productModel.model,
          style: AppStyles.stylesRegular10
              .copyWith(color: Color(0xff868D94), fontSize: 10.sp),
        )
      ],
    );
  }
}
