import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';
import 'package:minimalecommerce/models/range_option_model.dart';
import 'package:minimalecommerce/views/widgets/product_filter_item.dart';

class ProductFilterList extends StatelessWidget {
  const ProductFilterList({super.key});

  @override
  Widget build(BuildContext context) {
    List<RangeOptionModel> items = [
      RangeOptionModel(image: Assets.imagesIcon),
      RangeOptionModel(title: 'Category', icon: Icons.arrow_drop_down),
      RangeOptionModel(title: 'Brand', icon: Icons.arrow_drop_down),
      RangeOptionModel(title: 'Price', icon: Icons.arrow_drop_down),
    ];
    return SizedBox(
      height: 48,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ProductFilterItem(item: items[index]),
            );
          }),
    );
  }
}
