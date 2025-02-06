import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.categoriesindex,
  });

  final List<String> categories;
  final int selectedIndex;
  final int categoriesindex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          categories[categoriesindex],
          style: AppStyles.stylesMediam14.copyWith(
            color: selectedIndex == categoriesindex
                ? Colors.black
                : Color(0xff868D94),
            fontWeight: selectedIndex == categoriesindex
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        if (selectedIndex == categoriesindex)
          Container(
            height: 2,
            width: 30,
            color: Colors.black,
          ),
      ],
    );
  }
}
