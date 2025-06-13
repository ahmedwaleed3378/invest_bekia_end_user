// import 'dart:convert';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:http/http.dart' as http;
// import '../../../../core/config/constants.dart';
// import '../../register/models/request_error_response.dart';
// import '../models/forget_password_model.dart';

// class ForgetPasswordService {
//   //final String baseUrl = "https://peekabid.com/api";

//   Future<ForgetPasswordModel> forgetPassword(String phone,
//       {required String language}) async {
//     final url = Uri.parse('$baseUrl/forget-password/$phone');

//     print("===================================$url");
//     try {
//       final response = await http.post(url, headers: {
//         "Content-Language": language,
//       });
//       print("=============================${response.body}");
//       print("=============================${response.statusCode}");
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final data = jsonDecode(response.body);
//         final ForgetPasswordModel forgetPasswordModel =
//             ForgetPasswordModel.fromJson(data);
//         return forgetPasswordModel;
//       } else if (response.statusCode == 422 || response.statusCode == 400) {
//         final errorResponse =
//             RequestErrorResponse.fromJson(jsonDecode(response.body));
//         String firstErrorMessage =
//             errorResponse.errors != null && errorResponse.errors!.isNotEmpty
//                 ? errorResponse.errors!.first.messages!.isNotEmpty
//                     ? errorResponse.errors!.first.messages!.first
//                     : "unknown_error".tr()
//                 : errorResponse.message ?? "unknown_error".tr();

//         throw firstErrorMessage;
//       } else {
//         throw 'failed_reset_password'.tr();
//       }
//     } catch (e) {
//       throw e.toString();
//     }
//   }
// }
