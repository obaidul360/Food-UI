import 'package:flutter/material.dart';

class EmailFieldWidgets extends StatelessWidget {
  const EmailFieldWidgets({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}