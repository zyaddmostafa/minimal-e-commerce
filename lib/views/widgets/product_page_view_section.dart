import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/dots_indcator.dart';
import 'package:minimalecommerce/views/widgets/product_page_view.dart';

class ProductPageViewSection extends StatefulWidget {
  const ProductPageViewSection({super.key});

  @override
  State<ProductPageViewSection> createState() => _ProductPageViewSectionState();
}

class _ProductPageViewSectionState extends State<ProductPageViewSection> {
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
    return Column(
      children: [
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
      ],
    );
  }
}
