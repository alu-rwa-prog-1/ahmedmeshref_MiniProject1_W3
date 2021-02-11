import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_now/home/components/drawer.dart';
import 'package:food_now/home/components/bottom_navbar.dart';
import 'package:food_now/home/components/appbar.dart';
import 'package:food_now/home/components/body.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeAppDrawer(),
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
