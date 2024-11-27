import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:santos_rentacar/features/pages/login/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56.0,
            left: 24.0,
            bottom: 24.0,
            right: 24.0,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/logos/icons8-logo.svg',
                    height: 80,
                  ),
                  const Text(
                    'Santos Rent-A-Car',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    'Drive with your style at the perfect price',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'E-mail',
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
                        height: 16.0 / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text('Remember me')
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Forget password?')),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('Sign in'))),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen()));
                              },
                              child: const Text('Create account')))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    'Or Sign In With',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/icons/google.svg',
                          height: 16,
                        )),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/icons/facebook.svg',
                          height: 16,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
