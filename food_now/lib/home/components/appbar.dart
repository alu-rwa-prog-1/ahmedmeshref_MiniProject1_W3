import 'package:flutter/material.dart';


AppBar homeAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'FoodNow',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Theme
        .of(context)
        .primaryColor,
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
  );
}


