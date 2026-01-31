import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

import '../form/login.dart';

class GoogleAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // LOGOUT
  Future<void> signOut(BuildContext context) async {
    try {
      await _googleSignIn.signOut(); // Google logout
      await _auth.signOut(); // Firebase logout

      // Go back to Login page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
        (route) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Logout Failed: $e")));
    }
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user?.photoURL ?? ""),
          ),
          const SizedBox(height: 10),
          Text(user?.displayName ?? ""),
          Text(user?.email ?? ""),
          ElevatedButton(
            onPressed: () async {
              await GoogleAuthService().signOut(context);
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
