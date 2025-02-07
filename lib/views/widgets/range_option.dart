import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key, this.image, this.title, this.icon});

  final String? image, title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (title != null)
          Text(
            title!,
            style: AppStyles.stylesMediam14.copyWith(fontSize: 16.sp),
          ),
        if (icon != null)
          Icon(icon)
        else
          Center(child: SvgPicture.asset(image!)),
      ],
    );
  }
}
