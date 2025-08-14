import 'package:fruit_shop/core/util/api_services.dart';
import 'package:fruit_shop/core/util/fruit_model.dart';

class FruitRepo {
  final ApiService apiService;
  FruitRepo(this.apiService);
  Future<List<FruitModel>> getAllFruits() async {
    try {
      var response = await apiService.getAllFruits();
      return response;
    } catch (e) {
      return [];
    }
  }
}
