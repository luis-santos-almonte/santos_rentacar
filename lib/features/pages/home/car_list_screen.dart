import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos_rentacar/features/bloc/car_bloc.dart';
import 'package:santos_rentacar/features/bloc/car_state.dart';
import 'package:santos_rentacar/features/pages/login/custom_profile_screen.dart';
import 'package:santos_rentacar/features/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose Your Car'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<CustomProfileScreen>(
                    builder: (context) => const CustomProfileScreen(),
                  ),
                );
              },
            )
          ],
        ),
        body: BlocBuilder<CarBloc, CarState>(builder: (context, state) {
          if (state is CarsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarsError) {
            return Center(
              child: Text('error : ${state.message}'),
            );
          }
          return Container();
        }));
  }
}
