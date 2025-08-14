import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop/core/util/fruit_model.dart';
import 'package:fruit_shop/core/util/repo.dart';

part 'get_fruit_state.dart';

class GetFruitCubit extends Cubit<GetFruitState> {
  GetFruitCubit(this.fruitRepo) : super(GetFruitInitial());
  final FruitRepo fruitRepo;
  void emitGetAllFruits() {
    fruitRepo.getAllFruits().then((fruitsList) {
      emit(GetAllFruits(fruitsList));
    });
  }
}
