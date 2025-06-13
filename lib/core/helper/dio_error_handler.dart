import 'dart:convert';
import 'package:dio/dio.dart';

String handleDioError(Response? response) {
  if (response?.statusCode == 422 ||
      response?.statusCode == 400 ||
      response?.statusCode == 401) {
    final errorResponse = RequestErrorResponse.fromJson(
      jsonDecode(response.toString()),
    );
    return errorResponse.message ?? "حدث خطأ في البرنامج يرجى المحاولة لاحقاً";
  }
  return "حدث خطأ في البرنامج يرجى المحاولة لاحقاً";
}

class RequestErrorResponse {
  String? message;
  // List<FieldError>? errors;

  RequestErrorResponse({this.message, 
  // this.errors,
  });

  RequestErrorResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    // if (json['errors'] != null) {
    //   errors = [];
    //   json['errors'].forEach((key, value) {
    //     errors!.add(FieldError(field: key, messages: List<String>.from(value)));
    //   });
    // }
  }
}

// class FieldError {
//   String? field;
//   List<String>? messages;

//   FieldError({this.field, this.messages});

//   FieldError.fromJson(Map<String, dynamic> json) {
//     field = json['field'];
//     messages = List<String>.from(json['messages']);
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['field'] = field;
//     data['messages'] = messages;
//     return data;
//   }
// }
