class Vehicle {
  final String id;
  final String vehicleName;
  final String vehicleType;
  final int charging;
  final int maxSpeed;
  final int range;
  final int passengerCount;
  final int wheels;
  final bool snowTires;
  final bool gps;
  final bool bluetooth;
  final String typeOfCar;

  Vehicle({
    required this.id,
    required this.vehicleName,
    required this.vehicleType,
    required this.charging,
    required this.maxSpeed,
    required this.range,
    required this.passengerCount,
    required this.wheels,
    required this.snowTires,
    required this.gps,
    required this.bluetooth,
    required this.typeOfCar,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['_id'],
      vehicleName: json['vehicleName'],
      vehicleType: json['vehicleType'],
      charging: json['charging'],
      maxSpeed: json['maxSpeed'],
      range: json['range'],
      passengerCount: json['passengerCount'],
      wheels: json['wheels'],
      snowTires: json['snowTires'],
      gps: json['gps'],
      bluetooth: json['bluetooth'],
      typeOfCar: json['typeOfCar'],
    );
  }
}
