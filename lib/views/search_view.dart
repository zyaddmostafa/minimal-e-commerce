import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/custom_text_field.dart';
import 'package:minimalecommerce/views/widgets/search_item.dart';
import 'package:minimalecommerce/views/widgets/search_item_list_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(),
          SizedBox(
            height: 32,
          ),
          Expanded(child: SearchItemListView()),
        ],
      ),
    );
  }
}
