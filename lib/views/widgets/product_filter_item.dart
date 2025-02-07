import 'package:flutter/material.dart';
import 'package:minimalecommerce/models/range_option_model.dart';
import 'package:minimalecommerce/views/widgets/range_option.dart';

class ProductFilterItem extends StatelessWidget {
  const ProductFilterItem({super.key, required this.item});
  final RangeOptionModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
          color: Color(0xffF5F5F5), borderRadius: BorderRadius.circular(12)),
      child: RangeOption(
        icon: item.icon,
        image: item.image,
        title: item.title,
      ),
    );
  }
}
