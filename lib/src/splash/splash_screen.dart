import 'package:flutter/material.dart';

import '../form/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/splash_logo.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.height * 0.12,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Text(
                "Get Stated",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
