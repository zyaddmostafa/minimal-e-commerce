import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/custom_app_bar.dart';
import 'package:minimalecommerce/views/widgets/product_filter_list.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomAppBar(),
          SizedBox(
            height: 32,
          ),
          ProductFilterList(),
        ],
      ),
    );
  }
}
