import 'package:flutter/material.dart';
import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/features/pages/home/car_details_screen.dart';
import 'package:santos_rentacar/utils/functions.dart';

class DetailedCarCard extends StatelessWidget {
  final Car car;

  const DetailedCarCard({super.key, required this.car});

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
            Image.asset(
              'assets/images/car_image.png',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/gps.png'),
                        const SizedBox(width: 5),
                        Text('${car.distance.toStringAsFixed(0)}km'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset('assets/images/pump.png'),
                        const SizedBox(width: 5),
                        Text(
                            '${car.fuelCapacity.toStringAsFixed(0)}L ${capitalize(car.fuelType)}'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.color_lens,
                          color: Colors.grey,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text('${capitalize(car.color)}'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.grey,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text('${car.year.toStringAsFixed(0)}'),
                      ],
                    ),
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
