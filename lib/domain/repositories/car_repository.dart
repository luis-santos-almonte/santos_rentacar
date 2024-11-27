import 'package:santos_rentacar/data/models/car_model.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
