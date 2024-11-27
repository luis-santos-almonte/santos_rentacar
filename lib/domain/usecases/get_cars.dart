import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return repository.fetchCars();
  }
}
