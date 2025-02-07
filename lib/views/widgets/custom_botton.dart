import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal:
              MediaQuery.of(context).size.width * 0.356, // 20% of screen width
        ),
        backgroundColor: Color(0xff212429),
      ),
      onPressed: () {},
      child: Text(
        'CheckOut',
        style: AppStyles.stylesRegular14.copyWith(color: Colors.white),
      ),
    );
  }
}
