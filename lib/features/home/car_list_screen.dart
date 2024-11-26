import 'package:flutter/material.dart';
import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
        model: 'Fortuner GR',
        distance: 870,
        color: 'black',
        fuelCapacity: 50,
        fuelType: 'Gasoline',
        pricePerHour: 45,
        year: 2024),
    Car(
        model: 'Fortuner GR',
        distance: 870,
        color: 'black',
        fuelCapacity: 50,
        fuelType: 'Gasoline',
        pricePerHour: 45,
        year: 2024),
    Car(
        model: 'Fortuner GR',
        distance: 870,
        color: 'black',
        fuelCapacity: 50,
        fuelType: 'Gasoline',
        pricePerHour: 45,
        year: 2024)
  ];

  CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
