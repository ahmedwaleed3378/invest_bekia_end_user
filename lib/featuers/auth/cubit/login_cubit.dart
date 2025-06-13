import 'package:flutter_bloc/flutter_bloc.dart';

import '../login_services/login_service.dart';
import '../models/login_model.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;

  LoginCubit(this.loginService) : super(LoginInitial());

  Future<void> login(Map<String, dynamic> data,
      {required String language}) async {
    emit(LoginLoading());
    // final bool isConnected =
    // await InternetConnectionChecker.instance.hasConnection;
    // if (!isConnected) {
    //   emit(LoginFailure("no_internet".tr()));
    //   return;
    // }
    try {
      final LoginModel loginModel =
          await loginService.login(data);
      emit(LoginSuccess(loginModel));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}
