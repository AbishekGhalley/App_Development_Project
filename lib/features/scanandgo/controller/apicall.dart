import 'package:http/http.dart' as http;
import 'package:myekigai/features/scanandgo/controller/qr_controller.dart';
import 'dart:convert';
import 'VehicleClass.dart';
import 'package:get/get.dart'; // Import the Vehicle class

class ApiService {
  static Future<Vehicle> fetchData(String code) async {
    final response =
        await http.get(Uri.parse('https://tempapi.myekigai.com/$code'));
    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      return Vehicle.fromJson(decodedJson);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
