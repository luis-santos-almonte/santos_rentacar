import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:santos_rentacar/features/pages/home/car_list_screen.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              EmailAuthProvider(),
              GoogleProvider(
                  clientId: 
                      '769927556035-9h56akd518l3n1edvratv024ok0cptpc.apps.googleusercontent.com')
            ],
          );
        }

        return const CarListScreen();
      },
    );
  }
}
