import 'package:flutter/material.dart';
import 'package:food_ui/src/pages/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          deliverytitle: 'Deliver to',
          nametitle: "My Home, Obaidul",
        ),
      ),
    );
  }
}
