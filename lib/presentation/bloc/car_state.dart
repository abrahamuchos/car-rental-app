part of 'car_bloc.dart';

@immutable
sealed class CarState {}

final class CarLoading extends CarState {}

final class CarLoaded extends CarState {
  final List<Car> cars;

  CarLoaded(this.cars);
}

final class CarError extends CarState{
  final String message;

  CarError(this.message);
}


