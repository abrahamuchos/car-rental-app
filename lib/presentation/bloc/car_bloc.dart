import 'package:bloc/bloc.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:meta/meta.dart';
import 'package:car_rental_app/domain/usecases/get_cars.dart';

part 'car_event.dart';

part 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarLoading()) {
    on<CarEvent>((event, emit) async {
      emit(CarLoading());
      try {
        final cars = await getCars.call();

        emit(CarLoaded(cars));
      } catch (e) {
        emit(CarError(e.toString()));
      }
    });
  }
}
