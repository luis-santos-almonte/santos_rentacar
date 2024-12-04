import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class CustomProfileScreen extends StatelessWidget {
  const CustomProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ProfileScreen(
        actions: [
          SignedOutAction((context) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            );
          }),
        ],
      ),
    );
  }
}
