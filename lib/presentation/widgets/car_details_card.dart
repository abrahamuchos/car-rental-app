import 'package:car_rental_app/presentation/widgets/car_statics.dart';
import 'package:flutter/material.dart';

class CarDetailsCard extends StatelessWidget {
  const CarDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 340,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            //Card Title (Black card)
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fortuner GR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CarStatics(distance: '234', fuelCapacity: '100'),
                  ],
                ),
              ],
            ),
          ),

          //Card Features
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIconFeatures(
                          Icons.local_gas_station,
                          'Diesel',
                          'Common Rail',
                        ),
                        _buildIconFeatures(
                          Icons.speed,
                          'Acceleration',
                          '0 - 100km/s',
                        ),
                        _buildIconFeatures(
                          Icons.ac_unit,
                          'Cold',
                          'Temp Control',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$45.0/day',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: Text('Book Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildIconFeatures(IconData icon, String title, String subtitle) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          Icon(icon, size: 28),
          Text(title),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 10)),
        ],
      ),
    );
  }
}
