import 'package:car_rental_app/core/theme/app_colors.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/pages/map_details_page.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:car_rental_app/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatefulWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() { setState(() {
      }); });

    _controller!.forward();


    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 20,
          ),
          child: Column(
            children: [
              //Car Card – model, price, image
              CarCard(car: widget.car),
              SizedBox(height: 20),
              Row(
                children: [
                  //Card User – Info user and price
                  _buildCardUser(),
                  SizedBox(width: 20),
                  //Card Map – Pre image to button map
                  _buildCardMap(context),
                ],
              ),
              SizedBox(height: 20),
              //List about more cars
              Column(
                children: [
                  MoreCard(car: widget.car),
                  SizedBox(height: 5),
                  MoreCard(car: widget.car),
                  SizedBox(height: 5),
                  MoreCard(car: widget.car),
                  SizedBox(height: 5),
                  MoreCard(car: widget.car),
                  SizedBox(height: 5),
                  MoreCard(car: widget.car),
                ],
              ),
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

  Expanded _buildCardMap(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:
            () =>
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MapDetailsPage(car: widget.car),
              ),
            ),
        child: Container(
          height: 170,
          decoration: BoxDecoration(
            color: AppColors.whiteGray,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Transform.scale(
              scale: _animation!.value,
              alignment: Alignment.center,
              child: Image.asset('assets/images/maps.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
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
