import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/category_item_list_view.dart';
import 'package:minimalecommerce/views/widgets/dots_indcator.dart';
import 'package:minimalecommerce/views/widgets/product_page_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController pageController;
  int pageindex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        pageindex = pageController.page!.round();
      });
    });
    super.initState();
  }

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
              CategoryItemListView(),
              SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              ProductPageView(pageController: pageController),
              SizedBox(
                height: 4,
              ),
              DotsIndcator(
                currentPage: pageindex,
              ),
              SizedBox(
                height: 42,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
