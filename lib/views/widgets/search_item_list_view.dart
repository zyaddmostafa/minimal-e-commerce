import 'package:flutter/material.dart';
import 'package:minimalecommerce/views/widgets/search_item.dart';

class SearchItemListView extends StatelessWidget {
  const SearchItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Audio',
      'Drones + Electronics',
      'Photo + Video',
      'Gaming + VR',
      'Networking',
      'Notebooks + PCs',
      'PC components',
      'Peripherals',
      'Smartphones + Tablets',
      'Software solutions',
      'TV + Home cinema',
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => SearchItem(
        title: items[index],
      ),
    );
  }
}
