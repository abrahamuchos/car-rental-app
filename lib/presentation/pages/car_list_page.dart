import 'package:car_rental_app/injection_container.dart';
import 'package:car_rental_app/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Choose Your Car'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<CarBloc>()..add(LoadCars()),
        child: BlocConsumer<CarBloc, CarState>(
          listener: (context, state) {
            if (state is CarError) {
              var snackBar = SnackBar(content: Text(state.message));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            if (state is CarLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is CarLoaded) {
              return ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding:
                        index != state.cars.length
                            ? const EdgeInsets.all(10)
                            : const EdgeInsets.only(left: 10, right: 10),
                    child: CarCard(car: state.cars[index]),
                  );
                },
              );
            } else if (state is CarError) {
              return Center(
                child: Text(
                  'Ups something wrong!',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return Text('No data');
            }
          },
        ),
      ),
    );
  }
}
