import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  @override
  _HomeHomeBottomNavBar createState() => _HomeHomeBottomNavBar();
}

class _HomeHomeBottomNavBar extends State<HomeBottomNavBar> {
  // indicate the index of the selected item in the bottom navBar.
  int _currentBottomNavItemIndex = 0;

  // change the index of the selected item in the bottom navBar onTap.
  void _onBottomNavBarTap(int index) {
    setState(() {
      _currentBottomNavItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onBottomNavBarTap,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentBottomNavItemIndex,
      // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          label: 'My Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
            icon: new Icon(Icons.settings), label: 'Settings')
      ],
    );
  }
}
