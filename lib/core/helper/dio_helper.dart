import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
const String baseUrl = 'https://localhost:7010'; // Replace with your actual base URL
class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    const timeout = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();

      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;

      // Configure underlying HttpClient
      final adapter = IOHttpClientAdapter();
      adapter.onHttpClientCreate = (client) {
        client.idleTimeout = const Duration(seconds: 15);
        client.maxConnectionsPerHost = 5;

        // Avoid DNS delay customization here as `lookup` is deprecated
        return client;
      };

      dio!.httpClientAdapter = adapter;

      await addDioHeaders();
      addDioInterceptor();
    }

    return dio!;
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static Future<void> addDioHeaders() async {
    dio?.options.headers = {
      HttpHeaders.acceptHeader: '*/*',
      HttpHeaders.connectionHeader: 'keep-alive',
      'Accept-Encoding': 'gzip',
      'Accept': '*/*',
      HttpHeaders.authorizationHeader: 'Bearer ${CacheHelper.to.token}',
      HttpHeaders.contentLanguageHeader: CacheHelper.to.language,
      'Content-Language': CacheHelper.to.language,
      'X-Platform':
          Platform.isAndroid ? 'android' : (Platform.isIOS ? 'ios' : 'web'),
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
  }
}



  ///** File-Based Storage: FileCacheStore stores the cached data in the device's file system. This approach is useful for persisting data across app launches because the data remains
//** saved in the device's storage until explicitly cleared or when the cache expires.

  //** add Caching Method.*** */
  // static Future<void> addDioCaching() async {
  //   final cacheDir = await path_provider.getTemporaryDirectory();
  //   final cacheStore = FileCacheStore(cacheDir.path);
  //   final options = CacheOptions(
  //     store: cacheStore,
  //     policy: CachePolicy.request,
  //     hitCacheOnErrorExcept: [401, 403],
  //     priority: CachePriority.normal,
  //     maxStale: const Duration(days: 7),
  //   );