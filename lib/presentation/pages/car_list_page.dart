import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatelessWidget {
  CarListPage({super.key});

  final List<Car> cars = [
    Car(model: 'Fortuner XL', distance: 345, fuelCapacity: 375, pricePerHour: 98),
    Car(model: 'Fortuner GR', distance: 320, fuelCapacity: 375, pricePerHour: 98),
    Car(model: 'Fortuner SRT', distance: 344, fuelCapacity: 375, pricePerHour: 98),
    Car(model: 'Fortuner SRT', distance: 344, fuelCapacity: 375, pricePerHour: 98),
    Car(model: 'Fortuner SRT', distance: 344, fuelCapacity: 375, pricePerHour: 98),
    Car(model: 'Fortuner SRT', distance: 344, fuelCapacity: 375, pricePerHour: 98),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Choose Your Car'),
        centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (BuildContext context, int index){
          return CarCard(car: cars[index]);
        },
      ),

    );
  }
}
