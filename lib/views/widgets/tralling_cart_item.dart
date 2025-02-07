import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_images.dart';

class TrallingCartItem extends StatelessWidget {
  const TrallingCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12, right: 6),
          child: Image.asset(Assets.imagesPoints),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.add,
                size: 15,
                color: Color(0xff495057),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text('1'),
            SizedBox(
              width: 4,
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color(0xff495057),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.add,
                size: 15,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
