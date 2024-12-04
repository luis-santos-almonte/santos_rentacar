import 'package:flutter/material.dart';
import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/features/pages/home/car_details_screen.dart';
import 'package:santos_rentacar/utils/functions.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CarDetailsScreen(
                      car: car,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 10),
            ]),
        child: Column(
          children: [
            Image.network(
              car.imageUrl,
              height: 120,
            ),
            Text(
              car.model,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icons/gps.png'),
                        Text('${car.distance.toStringAsFixed(0)}km')
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/icons/pump.png'),
                        Text(
                            '${car.fuelCapacity.toStringAsFixed(0)}L ${capitalize(car.fuelType)}')
                      ],
                    )
                  ],
                ),
                Text(
                  '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
