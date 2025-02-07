import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class ProductPageViewItem extends StatelessWidget {
  const ProductPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: FittedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.imagesMic1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 41,
                ),
                Text(
                  'Microphones',
                  style: AppStyles.stylesSemiBold10.copyWith(
                    color: Color(0xff868D94),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  r'$108.20',
                  style:
                      AppStyles.stylesExtraBold14.copyWith(color: Colors.red),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'RØDE PodMic',
                  style: AppStyles.stylesMediam14.copyWith(
                    color: Color(0xff212429),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  softWrap: true,
                  'Dynamic microphone, Speaker \n microphone',
                  style: AppStyles.stylesMediam12.copyWith(
                    color: Color(0xff868D94),
                  ),
                ),
                SizedBox(
                  height: 41,
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
