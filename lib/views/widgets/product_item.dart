import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Image.asset(Assets.imagesHeadphoneB)),
        SizedBox(
          height: 8,
        ),
        Text(
          r'$349.99',
          style: AppStyles.stylesExtraBold14,
        ),
        Text(
          softWrap: true,
          'SONY Premium Wireless Headphones',
          style: AppStyles.stylesMediam14.copyWith(fontSize: 14.sp),
        ),
        Text(
          'Model: WH-1000XM4, Black',
          style: AppStyles.stylesRegular10
              .copyWith(color: Color(0xff868D94), fontSize: 10.sp),
        )
      ],
    );
  }
}
