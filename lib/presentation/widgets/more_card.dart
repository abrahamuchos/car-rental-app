import 'package:car_rental_app/data/models/car.dart';
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
              _buildStatics(),
              SizedBox(height: 10),
            ],
          ),
          //Arrow Icon
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }

  Row _buildStatics() {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.directions_car, color: Colors.white, size: 16),
            Text(
              ' > ${car.distance.toString()}km',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Icon(Icons.battery_full_sharp, color: Colors.white, size: 16),
            Text(
              car.fuelCapacity.toString(),
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
