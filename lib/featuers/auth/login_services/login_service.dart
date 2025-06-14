import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/helper/di.dart';
import 'package:invest_bekia/core/helper/dio_helper.dart';

import '../models/login_model.dart';

class LoginService {
  Future<LoginResponse> login(Map<String, dynamic> data) async {
    // try {
    final response = await getIt<Dio>().post("$baseUrl/auth/login", data: data);

    final LoginResponse loginModel = LoginResponse.fromJson(response.data);
    await CacheHelper.to.saveToken(loginModel.data!.token!);
    await CacheHelper.to.savePhone(loginModel.data!.phoneNumber ?? "");
    await CacheHelper.to.saveImage(loginModel.data!.profileImage ?? "");
    await CacheHelper.to.saveUserId(loginModel.data!.userId!);
    await CacheHelper.to.saveReservedCash(loginModel.data!.reservedCash ?? 0);
    await CacheHelper.to.saveWalletBalance(loginModel.data!.walletBalance ?? 0);
    await CacheHelper.to.saveSelledAmount(loginModel.data!.selledScrapAmount??0);
    await CacheHelper.to.saveUserName(loginModel.data!.fullname!);
    DioFactory.setTokenIntoHeaderAfterLogin(loginModel.data!.token!);
    log('cached token: ${CacheHelper.to.token}');
    log('cached phone: ${CacheHelper.to.phone}');
    log('cached image: ${CacheHelper.to.image}');
    log('cached userName: ${CacheHelper.to.userName}');
    log('cached userName: ${CacheHelper.to.userID.toString()}');
    log('cached userId: ${loginModel.data!.userId}');
    log('cached walletBalance: ${loginModel.data!.walletBalance}');
    return loginModel;
    // } on DioException catch (e) {
    //   throw handleDioError(e.response);
    // } catch (e) {
    //   throw e.toString();
    // }
  }
}
