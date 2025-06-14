import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_bekia/featuers/auth/login_services/register_service.dart';
import 'package:invest_bekia/featuers/auth/models/register_response.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterService registerService;

  RegisterCubit(this.registerService) : super(RegisterInitial());

  Future<void> register(Map<String, dynamic> data) async {
    emit(RegisterLoading());
    // final bool isConnected =
    // await InternetConnectionChecker.instance.hasConnection;
    // if (!isConnected) {
    //   emit(RegisterFailure("no_internet".tr()));
    //   return;
    // }
    try {
      final RegisterResponse registerModel = await registerService.register(
        data,
      );
      emit(RegisterSuccess(registerModel));
    } catch (e) {
      emit(RegisterFailure(e.toString()));
    }
  }
}

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final RegisterResponse registerModel;

  RegisterSuccess(this.registerModel);
}

class RegisterFailure extends RegisterState {
  final String error;

  RegisterFailure(this.error);
}
