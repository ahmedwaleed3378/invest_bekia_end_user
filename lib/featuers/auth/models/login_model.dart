
class LoginResponse {
    bool? success;
    String? message;
    Data? data;

    LoginResponse({this.success, this.message, this.data});

    LoginResponse.fromJson(Map<String, dynamic> json) {
        success = json["success"];
        message = json["message"];
        data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["success"] = success;
        _data["message"] = message;
        if(data != null) {
            _data["data"] = data?.toJson();
        }
        return _data;
    }
}

class Data {
    String? token;
    int? userId;
    String? fullname;
    String? userName;
    dynamic email;
    String? phoneNumber;
    dynamic profileImage;
    int? walletBalance;
    int? reservedCash;
    int? sharesNumber;
    int? selledScrapAmount;

    Data({this.token, this.userId, this.fullname, this.userName, this.email, this.phoneNumber, this.profileImage, this.walletBalance, this.reservedCash, this.sharesNumber, this.selledScrapAmount});

    Data.fromJson(Map<String, dynamic> json) {
        token = json["token"];
        userId = json["userId"];
        fullname = json["fullname"];
        userName = json["userName"];
        email = json["email"];
        phoneNumber = json["phoneNumber"];
        profileImage = json["profileImage"];
        walletBalance = json["walletBalance"];
        reservedCash = json["reservedCash"];
        sharesNumber = json["sharesNumber"];
        selledScrapAmount = json["selledScrapAmount"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["token"] = token;
        _data["userId"] = userId;
        _data["fullname"] = fullname;
        _data["userName"] = userName;
        _data["email"] = email;
        _data["phoneNumber"] = phoneNumber;
        _data["profileImage"] = profileImage;
        _data["walletBalance"] = walletBalance;
        _data["reservedCash"] = reservedCash;
        _data["sharesNumber"] = sharesNumber;
        _data["selledScrapAmount"] = selledScrapAmount;
        return _data;
    }
}

class UserForLoginResponse {
  int? id;
  String? image;
  String? name;
  String? userName;
  String? email;
  String? phone;
  String? otp;

  UserForLoginResponse(
      {this.id,
        this.image,
        this.name,
        this.userName,
        this.email,
        this.phone,
        this.otp});

  UserForLoginResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['fullname'];
    userName = json['user_name'];
    email = json['email'];
    phone = json['phone'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['user_name'] = userName;
    data['email'] = email;
    data['phone'] = phone;
    data['otp'] = otp;
    return data;
  }
}
