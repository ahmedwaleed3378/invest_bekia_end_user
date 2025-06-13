class ChangePasswordModel {
  final bool success;
  final List<dynamic> data;
  final String message;

  ChangePasswordModel({
    required this.success,
    required this.data,
    required this.message,
  });

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordModel(
      success: json['success'] ?? false,
      data: json['data'] ?? [],
      message: json['message'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'data': data,
      'message': message,
    };
  }
}