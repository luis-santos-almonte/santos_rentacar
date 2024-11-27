import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_rounded),
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_rounded),
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.switch_account_outlined),
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'E-Mail',
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        labelText: 'Phone Number',
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password_sharp),
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('I agree to Privacy Policy and Terms of use')
                      ],
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Create account')))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
