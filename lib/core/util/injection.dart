import 'package:dio/dio.dart';
import 'package:fruit_shop/core/util/api_services.dart';
import 'package:fruit_shop/core/util/cubit/get_fruit_cubit.dart';
import 'package:fruit_shop/core/util/repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void initGetIt() {
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(createAndSetUpDio()),
  );
  getIt.registerLazySingleton<FruitRepo>(() => FruitRepo(getIt()));
  getIt.registerLazySingleton<GetFruitCubit>(() => GetFruitCubit(getIt()));
}

Dio createAndSetUpDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = Duration(seconds: 60 * 1000)
    ..options.receiveTimeout = Duration(seconds: 10 * 1000);
  dio.interceptors.add(
    LogInterceptor(
      request: true,
      responseHeader: false,
      responseBody: true,
      requestBody: true,
      error: true,
      requestHeader: false,
    ),
  );
  return dio;
}
