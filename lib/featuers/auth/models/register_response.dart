
class RegisterResponse {
    bool? success;
    String? message;
    RegisterResponseData? data;

    RegisterResponse({this.success, this.message, this.data});

    RegisterResponse.fromJson(Map<String, dynamic> json) {
        success = json["success"];
        message = json["message"];
        data = json["data"] == null ? null : RegisterResponseData.fromJson(json["data"]);
    }


}

class RegisterResponseData {
    int? userId;
    String? fullName;
    String? phoneNumber;
    dynamic profileImage;

    RegisterResponseData ({this.userId, this.fullName, this.phoneNumber, this.profileImage});

    RegisterResponseData.fromJson(Map<String, dynamic> json) {
        userId = json["userId"];
        fullName = json["fullName"];
        phoneNumber = json["phoneNumber"];
        profileImage = json["profileImage"];
    }


}