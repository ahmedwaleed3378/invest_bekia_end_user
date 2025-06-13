// import 'dart:convert';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:http/http.dart' as http;
// import '../../../../core/config/constants.dart';
// import '../../register/models/request_error_response.dart';

// class ChangePasswordService {
//   //final String baseUrl = "https://peekabid.com/api";

//   Future<String> changePassword(String phone, Map<String, dynamic> data,
//       {required String language}) async {
//     try {
//       final Uri url = Uri.parse("$baseUrl/change-password/$phone");
//       final response = await http.post(
//         url,
//         body: data,
//         headers: {
//           "Content-Language": language,
//         },
//       );

//       final int statusCode = response.statusCode;
//       final String responseBody = response.body;
//       if (statusCode == 200 || statusCode == 201) {
//         return "password_changed_successfully".tr();
//       } else if (statusCode == 422 || response.statusCode == 400) {
//         final errorResponse =
//             RequestErrorResponse.fromJson(jsonDecode(responseBody));
//         String firstErrorMessage =
//             errorResponse.errors != null && errorResponse.errors!.isNotEmpty
//                 ? errorResponse.errors!.first.messages!.isNotEmpty
//                     ? errorResponse.errors!.first.messages!.first
//                     : "unknown_error".tr()
//                 : errorResponse.message ?? "unknown_error".tr();

//         throw firstErrorMessage;
//       } else {
//         throw 'failed_change_password'.tr();
//       }
//     } catch (e) {
//       throw e.toString();
//     }
//   }
// }
