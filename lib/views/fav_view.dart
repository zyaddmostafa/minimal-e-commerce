import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/fav_product_list_view.dart';

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
          Align(
            alignment: Alignment.center,
            child: Text(
              'Favourites',
              style: AppStyles.stylesBold14,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Expanded(child: FavProductListView())
        ],
      ),
    );
  }
}
