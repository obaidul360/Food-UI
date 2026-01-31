import 'package:flutter/material.dart';

import 'package:food_ui/src/pages/widgets/appbar.dart';
import 'package:food_ui/src/pages/widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    'assets/images/enjoy.png',
    'assets/images/bargar.png',
    'assets/images/menu.png',
    'assets/images/pasta.png',
    'assets/images/pizza.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          deliverytitle: 'Deliver to',
          nametitle: "My Home, Obaidul",
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Image.asset("assets/images/menu.png")
              CaroselSliderWidgets(images: images),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}


