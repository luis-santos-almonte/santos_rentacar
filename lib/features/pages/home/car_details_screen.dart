import 'package:flutter/material.dart';
import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/features/widgets/detailed_car_card.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  const CarDetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text('Information')],
        ),
      ),
      body: Column(
        children: [
          DetailedCarCard(
              car: Car(
                  model: car.model,
                  distance: car.distance,
                  color: car.color,
                  fuelCapacity: car.fuelCapacity,
                  fuelType: car.fuelType,
                  pricePerHour: car.pricePerHour,
                  year: car.year)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Jane Cooper',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$4.253',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/maps.png'),
                            fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
