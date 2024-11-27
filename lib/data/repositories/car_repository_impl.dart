import 'package:santos_rentacar/data/datasources/firebase_car_data_source.dart';
import 'package:santos_rentacar/data/models/car_model.dart';
import 'package:santos_rentacar/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
