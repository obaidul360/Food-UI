import 'dart:math';

import 'package:flutter/material.dart';

import '../pages/home.dart';
import 'login.dart';

class RegistationScreen extends StatefulWidget {
  const RegistationScreen({super.key});

  @override
  State<RegistationScreen> createState() => _RegistationScreenState();
}

class _RegistationScreenState extends State<RegistationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namelController = TextEditingController();
  final TextEditingController phonelController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1978D7),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Registation",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),
                Icon(Icons.lock_open_outlined, size: 70),
                SizedBox(height: 20),

                /// Name Field
                TextFormField(
                  controller: namelController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Your name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name.***";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                ///Phone Number;
                TextFormField(
                  controller: phonelController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Your phone number",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter phone.***";
                    }
                    if (value.length != 11) {
                      return "Phone number must be 11 digits***";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                /// Email
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Your Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email.***";
                    }
                    if (!value.contains("@")) {
                      return "Please enter a valid mail.***";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                /// Password Field
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a strong password***";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters long***";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                //Confirm Password
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "confirm password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a strong password***";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters long***";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                // Registration
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff003465),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
