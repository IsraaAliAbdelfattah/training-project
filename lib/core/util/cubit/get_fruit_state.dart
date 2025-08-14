part of 'get_fruit_cubit.dart';

@immutable
sealed class GetFruitState {}

final class GetFruitInitial extends GetFruitState {}

class GetAllFruits extends GetFruitState {
  final List<FruitModel> fruitList;
  GetAllFruits(this.fruitList);
}
