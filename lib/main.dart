import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos_rentacar/features/bloc/car_bloc.dart';
import 'package:santos_rentacar/features/bloc/car_event.dart';
import 'package:santos_rentacar/features/pages/login/login_screen.dart';
import 'package:santos_rentacar/features/pages/onboard_screen/onboarding_page.dart';
import 'package:santos_rentacar/firebase_options.dart';
import 'package:santos_rentacar/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
