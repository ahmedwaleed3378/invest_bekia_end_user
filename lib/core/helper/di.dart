import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:invest_bekia/core/helper/dio_helper.dart';
final getIt = GetIt.instance;
// final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

Future<void> setupGetIt() async {
  // Dio & ApiService
  // CacheHelper.to.init();
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);
}
