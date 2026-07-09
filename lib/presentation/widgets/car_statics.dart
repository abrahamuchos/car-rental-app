import 'package:flutter/material.dart';

class CarStatics extends StatelessWidget {
  final String distance;
  final String fuelCapacity;

  const CarStatics({
    super.key,
    required this.distance,
    required this.fuelCapacity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.directions_car, color: Colors.white, size: 16),
            Text(
              ' > $distance km',
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
              fuelCapacity,
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
