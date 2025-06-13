// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:peek_abid/presentation/screens/login/models/forget_password_model.dart';
// import '../login_services/forget_password_service.dart';
// import 'forget_password_state.dart';

// class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
//   final ForgetPasswordService forgetPasswordService;

//   ForgetPasswordCubit(this.forgetPasswordService)
//       : super(ForgetPasswordInitial());

//   Future<void> forgetPassword(String phone,
//       {required String language}) async {
//     emit(ForgetPasswordLoading());
//     final bool isConnected =
//     await InternetConnectionChecker.instance.hasConnection;
//     if (!isConnected) {
//       emit(ForgetPasswordFailure("no_internet".tr()));
//       return;
//     }
//     try {
//       final ForgetPasswordModel forgetPasswordModel =
//           await forgetPasswordService.forgetPassword(phone, language: language);
//       emit(ForgetPasswordSuccess(forgetPasswordModel));
//     } catch (e) {
//       emit(ForgetPasswordFailure(e.toString()));
//     }
//   }
// }
