import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/category_item_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Michael',
                style: AppStyles.stylesSemiBold32,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: CategoryItemListView(),
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Text(
                    'Deals of the day',
                    style: AppStyles.stylesSemiBold20,
                  ),
                  Text(
                    'See all',
                    style: AppStyles.stylesMediam12.copyWith(
                      color: Color(0xff868D94),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
