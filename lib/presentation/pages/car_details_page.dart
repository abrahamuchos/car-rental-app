import 'package:car_rental_app/core/theme/app_colors.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:car_rental_app/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 20),
          child: Column(
            children: [
              CarCard(car: car),
              SizedBox(height: 20),
              Row(
                children: [
                  //Card User
                  _buildCardUser(),
                  SizedBox(width: 20),
                  //Card Map
                  _buildCardMap(),
                ],
              ),
              SizedBox(height: 20),
              //List
              Column(
                children: [
                  MoreCard(car: car,),
                  SizedBox(height: 5,),
                  MoreCard(car: car,),
                  SizedBox(height: 5,),
                  MoreCard(car: car,),
                  SizedBox(height: 5,),
                  MoreCard(car: car,),
                  SizedBox(height: 5,),
                  MoreCard(car: car,),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildCardUser() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.whiteGray,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
              radius: 40,
            ),
            SizedBox(height: 12),
            Text(
              'Jane Cooper',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text('\$4.23', style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Expanded _buildCardMap() {
    return Expanded(
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: AppColors.whiteGray,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Image.asset('assets/images/maps.png', fit: BoxFit.cover),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline),
          SizedBox(width: 5),
          Text('Information'),
        ],
      ),
      centerTitle: true,
    );
  }
}
