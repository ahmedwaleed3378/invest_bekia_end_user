import 'package:flutter_bloc/flutter_bloc.dart';

import '../login_services/login_service.dart';
import '../models/login_model.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;

  LoginCubit(this.loginService) : super(LoginInitial());

  Future<void> login(Map<String, dynamic> data,
      ) async {
    emit(LoginLoading());
    // final bool isConnected =
    // await InternetConnectionChecker.instance.hasConnection;
    // if (!isConnected) {
    //   emit(LoginFailure("no_internet".tr()));
    //   return;
    // }
    try {
      final LoginResponse loginModel =
          await loginService.login(data);
      emit(LoginSuccess(loginModel));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginResponse loginModel;

  LoginSuccess(this.loginModel);
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure(this.error);
}
