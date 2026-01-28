import 'package:flutter/material.dart';

import 'package:food_ui/src/pages/widgets/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    'image/enjoy.png',
    'image/pizza.jpg',
    'image/bargarr.png',
    'image/Menu.png',
    'image/pasta.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          deliverytitle: 'Deliver to',
          nametitle: "My Home, Obaidul",
        ),
        body: Column(
          children: [
            Image.asset("image/bargarr.png")
            /*CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 16 / 9,
                autoPlayInterval: Duration(seconds: 3),
              ),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(image, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),*/
          ],
        ),
      ),
    );
  }
}
