import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/category_item.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({super.key});

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All',
    'Audio',
    'Drones + Electronics',
    'Photo + Video'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 32),
              child: CategoryItem(
                  categories: categories,
                  selectedIndex: selectedIndex,
                  categoriesindex: index),
            ),
          );
        },
      ),
    );
  }
}
