import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_statics.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final Car car;

  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black87,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                car.model,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              CarStatics(
                distance: car.distance.toStringAsFixed(0),
                fuelCapacity: car.distance.toStringAsFixed(0),
              ),
              SizedBox(height: 10),
            ],
          ),
          //Arrow Icon
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
