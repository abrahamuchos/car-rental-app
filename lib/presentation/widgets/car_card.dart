import 'package:car_rental_app/core/theme/app_colors.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.whiteGray,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/car_image.png', height: 120),
            SizedBox(height: 10),
            Text(car.model),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/gps.png', height: 25),
                    Text("${car.distance.toStringAsFixed(0)}km"),
                    SizedBox(width: 10,),
                    Image.asset('assets/icons/pump.png', height: 25),
                    Text("${car.fuelCapacity.toStringAsFixed(0)}L"),
                  ],
                ),
                Text("\$${car.pricePerHour.toStringAsFixed(2)}/h"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
