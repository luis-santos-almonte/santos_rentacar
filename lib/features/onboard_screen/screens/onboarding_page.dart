import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
            child: Column(
          children: [
            Text('Wherever life takes you, \nlet us drive you there.')
          ],
        ))
      ],
    ));
  }
}
