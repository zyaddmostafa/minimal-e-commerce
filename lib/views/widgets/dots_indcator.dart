import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/custom_dots.dart';

class DotsIndcator extends StatelessWidget {
  const DotsIndcator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: EdgeInsets.only(right: 6),
          child: CustomDots(
            isActive: index == currentPage,
          ),
        ),
      ),
    );
  }
}
