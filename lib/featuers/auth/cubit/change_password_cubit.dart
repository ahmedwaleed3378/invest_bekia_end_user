// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import '../login_services/change_password_service.dart';
// import 'change_password_state.dart';

// class ChangePasswordCubit extends Cubit<ChangePasswordState> {
//   final ChangePasswordService changePasswordService;

//   ChangePasswordCubit(this.changePasswordService) : super(ChangePasswordInitial());

//   Future<void> changePassword(String phone, Map<String, dynamic> data, {required String language}) async {
//     emit(ChangePasswordLoading());
//     final bool isConnected =
//     await InternetConnectionChecker.instance.hasConnection;
//     if (!isConnected) {
//       emit(ChangePasswordFailure("no_internet".tr()));
//       return;
//     }
//     try {
//       final response = await changePasswordService.changePassword(phone, data, language: language);
//       emit(ChangePasswordSuccess(response));
//     } catch (e) {
//       emit(ChangePasswordFailure(e.toString()));
//     }
//   }
// }
