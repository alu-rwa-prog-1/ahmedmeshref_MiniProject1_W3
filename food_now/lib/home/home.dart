import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_now/home/components/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(9.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
                RaisedButton(
                  elevation : 0,
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  color: Colors.white30,
                  textColor: Theme.of(context).primaryColor,
                  child: Row(
                    children: <Widget>[
                      Text('View all'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ],
            ),
            Row(
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
