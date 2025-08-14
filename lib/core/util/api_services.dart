import 'package:dio/dio.dart';
import 'package:fruit_shop/core/util/fruit_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: 'https://www.fruityvice.com/api/fruit/')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET('all')
  Future<List<FruitModel>> getAllFruits();
}
