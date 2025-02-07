import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/fav_view.dart';
import 'package:minimalecommerce/views/home_view.dart';
import 'package:minimalecommerce/views/search_view.dart';
import 'package:minimalecommerce/views/widgets/product_desc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List pages = [
    HomeView(),
    SearchView(),
    FavView(),
    ProductDesc(),
    HomeView(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              AppStyles.stylesRegular10.copyWith(color: Color(0xff212429)),
          unselectedLabelStyle:
              AppStyles.stylesRegular10.copyWith(color: Color(0xffF5F5F5)),
          onTap: _onItemTapped,
        ),
        body: pages[_selectedIndex],
      ),
    );
  }
}
