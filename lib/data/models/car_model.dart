class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final String fuelType;
  final double pricePerHour;
  final double year;
  final String color;
  final String imageUrl;

  Car(
      {required this.model,
      required this.distance,
      required this.color,
      required this.fuelCapacity,
      required this.fuelType,
      required this.pricePerHour,
      required this.year,
      required this.imageUrl});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
        model: map['model'],
        distance: map['distance'],
        color: map['color'],
        fuelCapacity: map['fuelCapacity'],
        fuelType: map['fuelType'],
        pricePerHour: map['pricePerHour'],
        year: map['year'],
        imageUrl: map['imageUrl']);
  }
}
