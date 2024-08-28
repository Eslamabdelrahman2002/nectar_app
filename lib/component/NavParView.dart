import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';
import 'package:nectar_app/screens/account_screen.dart';
import 'package:nectar_app/screens/favourite_screen.dart';
import 'package:nectar_app/screens/shop_screen.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ShopScreen(),
    Center(
      child: Text("Search Screen"),
    ),
    Center(
      child: Text("cart Screen"),
    ),
    FavouriteScreen(),
    AccountScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/shopping_icon.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/search_icon.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/cart_icon.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/favourite_icon.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/subjective_icon.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
