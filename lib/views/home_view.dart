import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/home_view_header.dart';
import 'package:minimalecommerce/views/widgets/product_page_view_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              HomeViewHeader(),
              SizedBox(
                height: 36,
              ),
              ProductPageViewSection(),
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
