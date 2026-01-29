import 'dart:math';

import 'package:flutter/material.dart';

import '../pages/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                  "LogIn",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Icon(Icons.lock_open_outlined, size: 70),
                SizedBox(height: 20),

                /// Email Field
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
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
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff003465),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    child: Center(
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),

                /// Login Button
                /*SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${emailController.text}");
                        print("Password: ${passwordController.text}");
          
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Login Successful")),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
