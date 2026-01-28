import 'package:flutter/material.dart';
import 'package:food_ui/src/pages/favorite.dart';
import 'package:food_ui/src/pages/home.dart';
import 'package:food_ui/src/pages/profile.dart';

import '../pages/cart.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selected = 0;
  List pagesIndex = [HomePage(), CartPages(), FavoritePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesIndex[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
