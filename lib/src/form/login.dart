import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_ui/src/form/registation.dart';

import '../bottm_nav_bar/widgets.dart';
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
  final TextEditingController confirmpasswordController =
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
                    labelText: "Email or phone number",
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
                    bool isEmail = value.contains("@");
                    bool isPhone = value.length == 11;

                    if (!isEmail && !isPhone) {
                      return "Enter valid email or phone number";
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
                  obscureText: !_isPasswordVisible,
                  controller: confirmpasswordController,
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

                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigationBarScreen(),
                        ),
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
                        "LogIn",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Registration
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistationScreen(),
                      ),
                    );
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
                        "Registration",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Continue with.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  spacing: 8,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            //color: Color(0xff84B41A),
                            color: Color(0xffE44134),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Center(
                            child: Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff395693),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff00D1BB),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Center(
                            child: Text(
                              "TikTok",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
