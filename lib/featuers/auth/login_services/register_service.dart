import 'package:dio/dio.dart';
import 'package:invest_bekia/core/helper/di.dart';
import 'package:invest_bekia/core/helper/dio_error_handler.dart';
import 'package:invest_bekia/core/helper/dio_helper.dart';

import '../models/register_response.dart';

class RegisterService {
  Future<RegisterResponse> register(Map<String, dynamic> data,
    ) async {
    try {
      final formData = FormData.fromMap(data);
      final response = await getIt<Dio>().post(
        "$baseUrl/auth/register",
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      final RegisterResponse registerResponse = RegisterResponse.fromJson(response.data);

      return registerResponse;
    } on DioException catch (e) {
      throw handleDioError(e.response);
    } catch (e) {
      throw e.toString();
    }
  }
}
