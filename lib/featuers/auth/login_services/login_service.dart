import 'package:dio/dio.dart';
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/helper/di.dart';
import 'package:invest_bekia/core/helper/dio_error_handler.dart';
import 'package:invest_bekia/core/helper/dio_helper.dart';

import '../models/login_model.dart';

class LoginService {
  Future<LoginModel> login(Map<String, dynamic> data,
    ) async {
    try {
      final response = await getIt<Dio>().post(
        "$baseUrl/login",
        data: data,

      );

      final LoginModel loginModel = LoginModel.fromJson(response.data);
      await CacheHelper.to.saveToken(loginModel.data!.token!);
      DioFactory.setTokenIntoHeaderAfterLogin(loginModel.data!.token!);

      return loginModel;
    } on DioException catch (e) {
      throw handleDioError(e.response);
    } catch (e) {
      throw e.toString();
    }
  }
}
